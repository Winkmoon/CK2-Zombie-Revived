# Reverse-engineering notes

## Target

- Package: `com.bluegnc.chickenrevolution2`
- Version: `1.0.2` (versionCode `102`)
- Launcher: `com.bluegnc.chickenrevolution2.MainActivity`
- Native ABI: `armeabi` (32-bit ARM only)
- Engine: self-written C++/OpenGL in `lib/armeabi/libtestgl-jni.so`
- Java bridge: `com.framework.OGLActivity`, `com.framework.OGLRenderer`, `com.framework.OGLView`

## Original compatibility blockers

- `minSdkVersion=9`, `targetSdkVersion=9`.
- Native code is 32-bit ARM only.
- Google LVL / DRM and old in-app billing code paths.
- Old Flurry SDK calls in the Java layer.
- Some data was downloaded from a now-dead server.

## Compatibility changes in this project

### Manifest / resources

- `targetSdkVersion=28`, `extractNativeLibs=true`, cleartext traffic allowed.
- Theme: `Theme.Light.NoTitleBar.Fullscreen`, black window background.
- Removed the DRM activity from the launcher path.
- Resource IDs were regenerated with aapt2; the DEX resource IDs were remapped:
  - `drawable = 0x7f01xxxx`
  - `id = 0x7f02xxxx`
  - `layout = 0x7f03xxxx`
  - `string = 0x7f04xxxx`
  - `style = 0x7f05xxxx`

### Fullscreen / letterbox

- `MainActivity` requests `FEATURE_NO_TITLE`, applies immersive fullscreen, and re-applies it on window focus changes.
- `SettingsHelper` stores the letterbox preference in `SharedPreferences`.
- `OGLView` uses the real view width/height for the renderer size.
- When letterbox is enabled, the view is fitted to the original 3:2 aspect ratio and centered, leaving black bars.
- The settings button is drawn as a small Android view on top of the GL surface.

### Native offline stubs

Only two native functions are changed:

- `0x233d0` — `isNetwork()`: `movs r0, #0; bx lr`
- `0x1bfe8` — `httpPost()`: `movs r0, #0; bx lr`

Everything else in `libtestgl-jni.so` is the original binary.

## Data files

`assets/data/` contains the data files shipped in the APK:

- `ani.dat`
- `attinfo.dat`
- `definfo.dat`

Several stage/skill tables are disguised as sound files under `assets/snd/ef_0/ef_*.wav`. The native loaders read them through `bzFile::rOpenR`.

Observed table format:

```text
[header/count][rows][cols][rows * cols big-endian int32][optional trailing checksum]
```

`bzFile::readJInt()` reads four bytes and reconstructs a big-endian int.

## Native structures (selected)

- `bzStateGame` enemy/NPC array base: `this + 0x7bc38`, stride `0x14c`, 500 slots.
- NPC type: `slot + 0x7bc18`.
- NPC flag byte: `slot + 0x7bc1c`.
- NPC status: `slot + 0x7bc38`.
- NPC HP field: `slot + 0x7bca8`.
- `bzStateGame::setenemyhealth(int, float)` stores the resulting HP at `slot + 0x7bca8`.

These offsets are documented for future compatibility work.

## Build pipeline

1. Assemble `app/src/main/smali` with smali 2.5.2.
2. Compile `app/src/main/res` with aapt2.
3. Link resources against `android.jar` with targetSdk 28.
4. Add `classes.dex`, `lib/armeabi`, and `assets`.
5. zipalign and sign with apksigner.

See `scripts/build.sh`.

## Known limitations

- The native C++ source is not recoverable; only the ARM binary is available.
- The game requires a 32-bit ARM runtime. Pure arm64 devices without 32-bit support cannot run it.
- Google Play billing / LVL are not functional in this offline build.
- No server-side content can be recovered; only data already present in the APK is used.
