import 'dart:convert';

import 'package:flutter/material.dart';

//Immutable bedeutet unveränderbar

@immutable
class User {
  final String name;
  final String password;
  final DateTime birth;
  final bool isRegiastrated;
  final String email;

  const User({
    required this.name,
    required this.password,
    required this.birth,
    isRegiastrated,
    required this.email,
  }) : isRegiastrated = false;

  User copyWith({
    String? name,
    String? password,
    DateTime? birth,
    bool? isRegiastrated,
    String? email,
  }) {
    return User(
      name: name ?? this.name,
      password: password ?? this.password,
      birth: birth ?? this.birth,
      isRegiastrated: isRegiastrated ?? this.isRegiastrated,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'password': password,
      'birth': birth.millisecondsSinceEpoch,
      'isRegiastrated': isRegiastrated,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] ?? '',
      password: map['password'] ?? '',
      birth: DateTime.fromMillisecondsSinceEpoch(map['birth']),
      isRegiastrated: map['isRegiastrated'] ?? false,
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(name: $name, password: $password, birth: $birth, isRegiastrated: $isRegiastrated, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.name == name &&
        other.password == password &&
        other.birth == birth &&
        other.isRegiastrated == isRegiastrated &&
        other.email == email;
  }

  @override
  int get hashCode {
    return name.hashCode ^ password.hashCode ^ birth.hashCode ^ isRegiastrated.hashCode ^ email.hashCode;
  }
}
