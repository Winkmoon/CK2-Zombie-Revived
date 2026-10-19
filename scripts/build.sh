#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SDK="${ANDROID_SDK:-/opt/android-sdk}"
BUILD_TOOLS="${BUILD_TOOLS:-$SDK/build-tools/37.0.0}"
PLATFORM_JAR="${PLATFORM_JAR:-$SDK/platforms/android-37.1/android.jar}"

if [ ! -x "$BUILD_TOOLS/aapt2" ]; then
  echo "aapt2 not found: $BUILD_TOOLS/aapt2" >&2
  exit 1
fi
if [ ! -f "$PLATFORM_JAR" ]; then
  echo "android.jar not found: $PLATFORM_JAR" >&2
  exit 1
fi

TOOLS_CP="$ROOT/tools/smali-2.5.2.jar:$ROOT/tools/dexlib2-2.5.2.jar:$ROOT/tools/util-2.5.2.jar:$ROOT/tools/guava-31.1-jre.jar:$ROOT/tools/jcommander-1.64.jar:$ROOT/tools/antlr-runtime-3.5.2.jar"

BUILD="$ROOT/build"
DIST="$ROOT/dist"
rm -rf "$BUILD"
mkdir -p "$BUILD" "$DIST"

echo "[1/5] smali -> classes.dex"
java -cp "$TOOLS_CP" org.jf.smali.Main assemble \
  "$ROOT/app/src/main/smali" -o "$BUILD/classes.dex"

echo "[2/5] compile resources"
"$BUILD_TOOLS/aapt2" compile --dir "$ROOT/app/src/main/res" -o "$BUILD/res.zip"

echo "[3/5] link resources"
"$BUILD_TOOLS/aapt2" link \
  -o "$BUILD/base.apk" \
  -I "$PLATFORM_JAR" \
  --manifest "$ROOT/app/src/main/AndroidManifest.xml" \
  --min-sdk-version 9 \
  --target-sdk-version 28 \
  --version-code 102 \
  --version-name 1.0.2 \
  -A "$ROOT/app/src/main/assets" \
  "$BUILD/res.zip"

echo "[4/5] package"
cp -a "$ROOT/app/src/main/lib" "$BUILD/lib"
(
  cd "$BUILD"
  zip -q -r base.apk classes.dex lib
  "$BUILD_TOOLS/zipalign" -f -p 4 base.apk aligned.apk
)

echo "[5/5] sign"
KEYSTORE="${KEYSTORE:-$ROOT/debug.keystore}"
KS_PASS="${KS_PASS:-android}"
KEY_PASS="${KEY_PASS:-android}"
KEY_ALIAS="${KEY_ALIAS:-androiddebugkey}"
if [ ! -f "$KEYSTORE" ]; then
  keytool -genkeypair \
    -keystore "$KEYSTORE" \
    -storepass "$KS_PASS" \
    -keypass "$KEY_PASS" \
    -alias "$KEY_ALIAS" \
    -keyalg RSA -keysize 2048 -validity 10000 \
    -dname "CN=CK2 Revived, OU=Preservation, O=OpenSource, L=NA, S=NA, C=NA" >/dev/null
fi

"$BUILD_TOOLS/apksigner" sign \
  --ks "$KEYSTORE" \
  --ks-pass "pass:$KS_PASS" \
  --key-pass "pass:$KEY_PASS" \
  --out "$DIST/CK2-Zombie-Revived.apk" \
  "$BUILD/aligned.apk"

echo "done: $DIST/CK2-Zombie-Revived.apk"
