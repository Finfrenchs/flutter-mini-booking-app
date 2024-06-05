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

  /// File path: assets/icons/ic_distance.png
  AssetGenImage get icDistance =>
      const AssetGenImage('assets/icons/ic_distance.png');

  /// File path: assets/icons/ic_filter.png
  AssetGenImage get icFilter =>
      const AssetGenImage('assets/icons/ic_filter.png');

  /// List of all assets
  List<AssetGenImage> get values => [icDistance, icFilter];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/aston.jpg
  AssetGenImage get aston => const AssetGenImage('assets/images/aston.jpg');

  /// File path: assets/images/fave.webp
  AssetGenImage get fave => const AssetGenImage('assets/images/fave.webp');

  /// File path: assets/images/luminor.jpg
  AssetGenImage get luminor => const AssetGenImage('assets/images/luminor.jpg');

  /// File path: assets/images/redoorz.webp
  AssetGenImage get redoorz =>
      const AssetGenImage('assets/images/redoorz.webp');

  /// List of all assets
  List<AssetGenImage> get values => [aston, fave, luminor, redoorz];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

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
