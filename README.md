# CK2: Zombie / 僵尸鸡防卫战 — 开源兼容版

这是 `com.bluegnc.chickenrevolution2`（CK2: Zombie / Chicken Revolution II）的开源可开发工程，用于老游戏保存与研究。

项目特性：

- 横屏沉浸式全屏；
- 可选 3:2 原比例 + 左右黑边；
- 游戏内设置按钮；
- Android 高版本可安装（targetSdk 28）；
- 离线运行所需的网络桩补丁。

## 目录结构

```text
app/src/main/
  AndroidManifest.xml      Android 清单（targetSdk 28）
  smali/                   完整可汇编的 smali（构建用）
  res/                     资源（主题、布局、字符串）
  assets/                  游戏资源与数据（图片、音频、字体、.dat）
  lib/armeabi/             原始 32 位 ARM native 库
java-decompiled/           jadx 反编译出的 Java 可读代码（参考用）
tools/                     smali/baksmali 依赖 jar
scripts/build.sh           一键构建
scripts/decompile.sh       重新生成 Java 反编译代码
docs/REVERSE_ENGINEERING.md 逆向与兼容性说明
```

## 下载

已构建的 APK：

https://github.com/Winkmoon/CK2-Zombie-Revived/releases/tag/v1.0.2

## 构建

依赖：

- Linux / macOS；
- JDK 8+；
- Android SDK Build-Tools（含 `aapt2`、`zipalign`、`apksigner`）；
- Android Platform `android.jar`（默认使用 `android-37.1`）。

```bash
export ANDROID_SDK=/opt/android-sdk
./scripts/build.sh
```

输出：

```text
dist/CK2-Zombie-Revived.apk
```

首次构建会自动生成 `debug.keystore`（密码 `android`）。发布时请使用自己的签名：

```bash
KEYSTORE=/path/to/release.keystore KS_PASS=*** KEY_PASS=*** \
  ./scripts/build.sh
```

安装：

```bash
adb install -r dist/CK2-Zombie-Revived.apk
```

> 游戏 native 只有 `armeabi`（32 位 ARM）。请使用支持 32 位 ARM 应用的设备/模拟器；纯 arm64 环境无法运行。

## 已做的兼容性修改

- `AndroidManifest.xml`：`targetSdkVersion=28`，允许明文流量，`extractNativeLibs=true`；
- 主题改为 `Theme.Light.NoTitleBar.Fullscreen`，去掉标题栏；
- `MainActivity` 使用沉浸式全屏，并提供“保持原比例（黑边）”开关；
- `OGLView` 使用实际视图尺寸，按 3:2 比例做 letterbox；
- native 的 `isNetwork()` 与 `httpPost()` 返回失败，避免离线时卡在网络请求；
- 资源 ID 重新映射到 aapt2 生成的值（`R$id`、`R$drawable`、`R$string` 等）；
- 移除 Flurry 初始化与统计调用。

## 关于 Java 反编译代码

`java-decompiled/` 由 jadx 从构建后的 `classes.dex` 生成，便于阅读和二次开发；它不是完整的 Gradle 工程，不能直接 `gradle build`。实际可构建的源码是 `smali/`。

重新生成：

```bash
./scripts/decompile.sh
```

## Native 说明

`lib/armeabi/libtestgl-jni.so` 是原版自研 C++/OpenGL 引擎，无法还原为完整 C++ 源码。当前工程保留其二进制，并只做了两处离线补丁：

- `0x233d0`：`isNetwork()` 固定返回 0；
- `0x1bfe8`：`httpPost()` 固定返回 0。

其余逻辑保持原版。

## 免责声明

本项目仅用于老游戏保存、逆向学习与个人研究。游戏名称、美术、音频、数据及原始代码版权归原权利方（Blue GNC / 相关权利人）所有。请勿用于商业用途或重新分发付费内容。若权利人要求，仓库将删除相关内容。
