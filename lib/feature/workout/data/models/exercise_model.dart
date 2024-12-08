import 'package:graduation_project/core/helpers/app_assets.dart';

class ExerciseModel {
  final String name;
  final String image;

  ExerciseModel({
    required this.name,
    required this.image,
  });
}

List<ExerciseModel> exerciseList = [
  ExerciseModel(
    name: "Chest",
    image: Assets.imagesExercisesChest,
  ),
  ExerciseModel(
    name: "Arm",
    image: Assets.imagesExercisesARM,
  ),
  ExerciseModel(
    name: "Abs",
    image: Assets.imagesExercisesABS,
  ),
  ExerciseModel(
    name: "Leg",
    image: Assets.imagesExercisesLeg,
  ),
  ExerciseModel(
    name: "Back & Shoulder",
    image: Assets.imagesExercisesBack,
  ),
  ExerciseModel(
    name: "Stretches",
    image: Assets.imagesExercisesStretches,
  ),
];
