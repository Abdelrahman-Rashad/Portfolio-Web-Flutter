import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/model/project_model.dart';

final projectsProvider = FutureProvider<List<ProjectModel>>((ref) async {
  // Load the JSON file
  final String response =
      await rootBundle.loadString('assets/json/projects.json');
  final List<dynamic> data = json.decode(response);

  // Convert JSON data to a list of Project objects
  return data
      .map((json) => ProjectModel.fromMap(json as Map<String, dynamic>))
      .toList();
});
