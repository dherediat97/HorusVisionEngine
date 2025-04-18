import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:horus_vision_engine/ar_model_picker.dart';

void main() => runApp(HorusVisionEngineApp());

const String kDefault3DModel = "assets/models/immersive_film.glb";

class HorusVisionEngineApp extends StatefulWidget {
  const HorusVisionEngineApp({super.key});

  @override
  State<HorusVisionEngineApp> createState() => _HorusVisionEngineAppState();
}

class _HorusVisionEngineAppState extends State<HorusVisionEngineApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: kDebugMode,
      theme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.dark,
      home: ARModelPicker(),
    );
  }
}
