import 'dart:convert';

import 'package:flutter/material.dart';

//Immutable bedeutet unveränderbar
///@immutable Annotation: The @immutable annotation is used to indicate that the User class is immutable,
///
///meaning its instances cannot be changed after they are created. This is achieved by making all the class fields final.
@immutable
class User {
  ///name: A String field representing the user's name.
  final String name;

  ///birth: A DateTime field representing the user's date of birth.
  final DateTime? birth;

  ///language: A String field representing the user's preferred language.
  final String language;

  ///darkMode: A bool field representing whether the user prefers dark mode in the application.
  final bool darkMode;

  ///Constructor:

  ///The class has a single constructor defined using the const keyword.
  ///
  ///The constructor takes named parameters name, birth, language, and darkMode, all of which are required.
  ///
  ///The this keyword is used to assign the constructor parameters to the corresponding class fields.
  const User({required this.name, required this.birth, required this.language, required this.darkMode});

  ///- Method Signature:
  ///
  ///The method is named copyWith.
  ///It takes named parameters name, birth, language, and darkMode, all of which are nullable.
  ///- Functionality:
  ///The copyWith method returns a new instance of the User class with updated values based on the provided named parameters.
  ///
  ///If a named parameter is provided with a non-null value, it replaces the corresponding field in the new User instance.
  ///
  ///If the named parameter is null, the original value from the current instance is used.
  ///
  ///- Usage:
  ///This method allows for creating a new User object with modified properties while keeping the original object immutable.
  User copyWith({
    String? name,
    DateTime? birth,
    String? language,
    bool? darkMode,
  }) =>
      User(
        name: name ?? this.name,
        birth: birth ?? this.birth,
        language: language ?? this.language,
        darkMode: darkMode ?? this.darkMode,
      );

  ///Creates a Map with keys, values
  Map<String, dynamic> toMap() => {
        'name': name,
        'birth': birth?.millisecondsSinceEpoch,
        'language': language,
        'darkMode': darkMode,
      };

  ///Method Signature:

  ///The method is named toMap.
  ///It does not take any parameters.
  ///Functionality:
  ///The toMap method returns a Map<String, dynamic> containing the attributes of the class instance.
  ///
  ///The keys of the map are 'name', 'birth', 'language', and 'darkMode', and the corresponding values are the attributes of the class instance with the same names.
  ///
  ///Notably, the 'birth' value is obtained by calling the millisecondsSinceEpoch method on the birth attribute, which suggests that birth is a DateTime object.
  ///Usage:

  ///This method can be used to convert an instance of the class to a Map representation, which can be useful for serialization, storage, or other operations that require a key-value mapping of the object's attributes.
  factory User.fromMap(Map<String, dynamic> map) => User(
        name: map['name'] ?? '',
        birth: DateTime.fromMillisecondsSinceEpoch(map['birth']),
        language: map['language'] ?? '',
        darkMode: map['darkMode'] ?? false,
      );

  ///The provided Dart code snippet defines a method named toJson within a class. This method is used to convert the class instance to a JSON-encoded string. Here's a breakdown of the code:
  ///
  ///- Method Signature:
  ///- The method is named toJson.
  ///- It does not take any parameters.
  ///Functionality:
  ///- The toJson method calls the json.encode function, passing the result of the toMap method as an argument.
  ///- The toMap method is assumed to be a method within the same class that returns a Map<String, dynamic> representation of the class instance.
  ///Usage:
  ///- This method is used to convert the class instance to a JSON-encoded string, which can be useful for serialization, data transfer, or other scenarios where a JSON representation of the object is required.
  String toJson() => json.encode(toMap());

  ///The provided Dart code snippet defines a factory method named fromJson within a class.
  ///This factory method is used to create an instance of the class from a JSON source. Here's a breakdown of the code:
  ///
  ///Method Signature:
  ///- The method is a factory method named fromJson.
  ///- It takes a single parameter of type String named source, which presumably contains the JSON data.
  ///Functionality:
  ///- The fromJson factory method calls another method named fromMap and passes the result of json.decode(source) as an argument.
  ///- The json.decode function is used to parse the JSON data from the source string into a Dart object, which is then passed to the fromMap method.
  ///Usage:
  ///- This factory method is used to create an instance of the class from a JSON source. It assumes that the fromMap method is defined within the same class and is responsible for
  ///creating an instance of the class from a Map<String, dynamic> representation of the JSON data.
  ///Example:
  ///- Assuming the fromMap method is defined within the class and correctly handles the conversion from a Map<String, dynamic> to an instance of the class,
  /// calling User.fromJson(jsonString) will create a new instance of the User class based on the data provided in the jsonString.
  /// -----
  /// Constructs User from JSON String
  /// - source: Encoded JSON String
  ///
  /// Returns User
  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  ///This function convert a some instances of the Class to String
  @override
  String toString() => 'User(name: $name, birth: $birth, language: $language, darkMode: $darkMode)';

  ///The provided code snippet overrides the equality operator == within the User class. This allows instances of the User class to be compared for equality using the == operator. Here's a breakdown of the code:
  ///Annotation:
  ///The @override annotation indicates that the method is intended to override a method from a superclass or interface.
  ///Method Signature:
  ///The method is named operator ==.
  ///It takes a single parameter of type Object named other, representing the object to compare for equality.
  ///Functionality:
  ///The method first checks if the other object is identical to this object using the identical function. If they are identical (i.e., the same object in memory), the method returns true immediately, indicating that the objects are equal.
  ///If the other object is not identical to this object, the method then checks if the other object is an instance of the User class and compares the individual fields (name, birth, language, and darkMode) to determine equality.
  ///Return Value:
  ///The method returns a bool value indicating whether the objects are equal based on the comparison of their fields.
  ///Usage:
  ///By overriding the equality operator, instances of the User class can be compared using the == operator, allowing for straightforward equality comparisons.
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
  int get hashCode => name.hashCode ^ birth.hashCode ^ language.hashCode ^ darkMode.hashCode;
}
