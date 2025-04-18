import 'package:horus_vision_engine/app/enviroment_config.dart';

class AppAssets {
  static const String assetsFolder =
      EnvironmentConfig.environment == 'prod' ? 'assets' : '';

  static const String modelsFolder = '$assetsFolder/models';

  static const String squirrelGirlModel = '$assetsFolder/logo.glb';
  static const String immersiveFilmModel = '$assetsFolder/immersive_film.glb';
  static const String robotExpressiveModel =
      '$assetsFolder/robot_expressive.glb';
  AppAssets._();
}
