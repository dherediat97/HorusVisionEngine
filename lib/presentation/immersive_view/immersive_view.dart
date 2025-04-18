import 'package:flutter/material.dart';
import 'package:horus_vision_engine/app/app_assets.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ImmersiveView extends StatefulWidget {
  const ImmersiveView({super.key, required this.modelSrc});

  final String modelSrc;

  @override
  State<ImmersiveView> createState() => _ImmersiveViewState();
}

class _ImmersiveViewState extends State<ImmersiveView> {
  @override
  Widget build(BuildContext context) {
    return ModelViewer(
      src: switch (widget.modelSrc) {
        'immersiveFilm' => AppAssets.immersiveFilmModel,
        'robotExpressive' => AppAssets.robotExpressiveModel,
        _ => AppAssets.squirrelGirlModel,
      },
      alt: 'Interactive 3D Model',
      ar: true,
      loading: Loading.lazy,
      arScale: ArScale.fixed,
      cameraControls: true,
      autoRotate: false,
      minCameraOrbit: "auto",
      disableZoom: false,
      disablePan: true,
      disableTap: true,
      autoPlay: true,
      debugLogging: false,
      arPlacement: ArPlacement.wall,
    );
  }
}
