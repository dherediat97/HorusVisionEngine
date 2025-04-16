import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Horus Vision Engine'),
      ),
      body: const ModelViewer(
        backgroundColor: Colors.black87,
        src: 'assets/immersive_film.glb',
        alt: 'Immersive film',
        ar: true,
        arScale: ArScale.fixed,
        cameraControls: true,
        autoRotate: true,
        disableZoom: true,
        disablePan: true,
        disableTap: true,
        autoPlay: true,
      ),
    );
  }
}
