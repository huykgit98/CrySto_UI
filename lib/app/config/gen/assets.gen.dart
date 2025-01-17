/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/app_icon_dark_no_background.png
  AssetGenImage get appIconDarkNoBackground =>
      const AssetGenImage('assets/icons/app_icon_dark_no_background.png');

  /// File path: assets/icons/app_icon_dark_theme_transparent_bg.png
  AssetGenImage get appIconDarkThemeTransparentBgPng => const AssetGenImage(
      'assets/icons/app_icon_dark_theme_transparent_bg.png');

  /// File path: assets/icons/app_icon_dark_theme_transparent_bg.svg
  String get appIconDarkThemeTransparentBgSvg =>
      'assets/icons/app_icon_dark_theme_transparent_bg.svg';

  /// File path: assets/icons/app_icon_no_background.png
  AssetGenImage get appIconNoBackground =>
      const AssetGenImage('assets/icons/app_icon_no_background.png');

  /// File path: assets/icons/app_icon_transparent_bg.png
  AssetGenImage get appIconTransparentBgPng =>
      const AssetGenImage('assets/icons/app_icon_transparent_bg.png');

  /// File path: assets/icons/app_icon_transparent_bg.svg
  String get appIconTransparentBgSvg =>
      'assets/icons/app_icon_transparent_bg.svg';

  /// File path: assets/icons/launcher_icon.png
  AssetGenImage get launcherIcon =>
      const AssetGenImage('assets/icons/launcher_icon.png');

  /// File path: assets/icons/launcher_icon_dark.png
  AssetGenImage get launcherIconDark =>
      const AssetGenImage('assets/icons/launcher_icon_dark.png');

  /// List of all assets
  List<dynamic> get values => [
        appIconDarkNoBackground,
        appIconDarkThemeTransparentBgPng,
        appIconDarkThemeTransparentBgSvg,
        appIconNoBackground,
        appIconTransparentBgPng,
        appIconTransparentBgSvg,
        launcherIcon,
        launcherIconDark
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
