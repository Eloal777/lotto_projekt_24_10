import 'dart:convert';

import 'package:flutter/material.dart';

//Immutable bedeutet unveränderbar

@immutable
class User {
  final String name;
  final DateTime birth;
  final String language;
  final bool darkMode;

  const User({
    required this.name,
    required this.birth,
    required this.language,
    required this.darkMode,
  });

  User copyWith({
    String? name,
    DateTime? birth,
    String? language,
    bool? darkMode,
  }) {
    return User(
      name: name ?? this.name,
      birth: birth ?? this.birth,
      language: language ?? this.language,
      darkMode: darkMode ?? this.darkMode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'birth': birth.millisecondsSinceEpoch,
      'language': language,
      'darkMode': darkMode,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] ?? '',
      birth: DateTime.fromMillisecondsSinceEpoch(map['birth']),
      language: map['language'] ?? '',
      darkMode: map['darkMode'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(name: $name, birth: $birth, language: $language, darkMode: $darkMode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.name == name &&
        other.birth == birth &&
        other.language == language &&
        other.darkMode == darkMode;
  }

  @override
  int get hashCode {
    return name.hashCode ^ birth.hashCode ^ language.hashCode ^ darkMode.hashCode;
  }
}
