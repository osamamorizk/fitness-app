import 'package:graduation_project/core/helpers/app_assets.dart';

class MuscleModel {
  final String name;
  final String image;

  MuscleModel({
    required this.name,
    required this.image,
  });
}

List<MuscleModel> exerciseList = [
  MuscleModel(
    name: "Chest",
    image: Assets.imagesExercisesChest,
  ),
  MuscleModel(
    name: "Arm",
    image: Assets.imagesExercisesARM,
  ),
  MuscleModel(
    name: "Abs",
    image: Assets.imagesExercisesABS,
  ),
  MuscleModel(
    name: "Leg",
    image: Assets.imagesExercisesLeg,
  ),
  MuscleModel(
    name: "Back & Shoulder",
    image: Assets.imagesExercisesBack,
  ),
  MuscleModel(
    name: "Stretches",
    image: Assets.imagesExercisesStretches,
  ),
];
