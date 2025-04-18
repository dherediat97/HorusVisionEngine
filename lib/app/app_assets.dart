import 'package:horus_vision_engine/app/enviroment_config.dart';

class AppAssets {
  static const String assetsFolder =
      EnvironmentConfig.environment == 'prod' ? 'assets' : '';

  static const String modelsFolder = '$assetsFolder/models';

  static const String squirrelGirlModel = '$modelsFolder/squirrel_girl.glb';
  static const String immersiveFilmModel = '$modelsFolder/immersive_film.glb';
  static const String robotExpressiveModel =
      '$modelsFolder/robot_expressive.glb';
  AppAssets._();
}
