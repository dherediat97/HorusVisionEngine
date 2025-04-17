import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const HorusVisionEngine());
}

class HorusVisionEngine extends StatefulWidget {
  const HorusVisionEngine({super.key});

  @override
  State<HorusVisionEngine> createState() => _HorusVisionEngineState();
}

class _HorusVisionEngineState extends State<HorusVisionEngine> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horus Vision Engine',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ImmersiveView(),
    );
  }
}

class ImmersiveView extends StatefulWidget {
  const ImmersiveView({super.key, this.modelSrc = 'assets/immersive_film.glb'});

  final String modelSrc;

  @override
  State<ImmersiveView> createState() => _ImmersiveViewState();
}

class _ImmersiveViewState extends State<ImmersiveView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModelViewer(
        src: widget.modelSrc,
        alt: 'Immersive film',
        ar: true,
        arScale: ArScale.fixed,
        cameraControls: true,
        autoRotate: false,
        disableZoom: true,
        disablePan: true,
        disableTap: true,
        autoPlay: true,
      ),
    );
  }
}
