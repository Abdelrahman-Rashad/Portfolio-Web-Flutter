import 'dart:convert';

class ProjectModel {
  String? name;
  String? description;
  List<dynamic>? tech;
  String? image;
  String? url;

  ProjectModel({this.name, this.description, this.tech, this.image, this.url});

  factory ProjectModel.fromMap(Map<String, dynamic> data) => ProjectModel(
        name: data['name'] as String?,
        description: data['description'] as String?,
        tech: data['tech'] as List<dynamic>?,
        image: data['image'] as String?,
        url: data['url'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'description': description,
        'tech': tech,
        'image': image,
        'url': name,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ProjectModel].
  factory ProjectModel.fromJson(String data) {
    return ProjectModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ProjectModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
