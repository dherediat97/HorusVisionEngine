import 'package:flutter/material.dart';
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
      src: 'assets/models/${widget.modelSrc}.glb',
      alt: 'Interactive 3D Model',
      ar: true,
      loading: Loading.eager,
      arScale: ArScale.fixed,
      cameraControls: true,
      autoRotate: false,
      disableZoom: true,
      disablePan: true,
      disableTap: true,
      autoPlay: true,
    );
  }
}
