// // To parse this JSON data, do
// //
// //     final workoutData = workoutDataFromJson(jsonString);

// import 'package:flutter/material.dart';
// import 'package:meta/meta.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:convert';

// part 'workout_data.freezed.dart';

// WorkoutData workoutDataFromJson(String str) =>
//     WorkoutData.fromJson(json.decode(str) as Map<String, dynamic>);

// String workoutDataToJson(WorkoutData data) => json.encode(data.toJson());

// @freezed
// abstract class WorkoutData with _$WorkoutData {
//   const factory WorkoutData({
//     required String name,
//     required int id,
//     required List<WorkoutExercise> workoutExercises,
//     required int numberOfDays,
//     required Color color,
//   }) = _WorkoutData;

//   factory WorkoutData.fromJson(Map<String, dynamic> json) =>
//       _$WorkoutDataFromJson(json);
// }

// @freezed
// abstract class WorkoutExercise with _$WorkoutExercise {
//   const factory WorkoutExercise({
//     required int exerciseId,
//     required int series,
//     required List<int> reps,
//     required List<double> weights,
//     required List<int> timeInSeconds,
//   }) = _WorkoutExercise;

//   factory WorkoutExercise.fromJson(Map<String, dynamic> json) =>
//       _$WorkoutExerciseFromJson(json);
// }
