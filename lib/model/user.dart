import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:social_meme/model/post.dart';

class User {
  String avatarUrl;
  String name;
  int followers;
  List<Post> posts;
  User({
    required this.avatarUrl,
    required this.name,
    required this.followers,
    required this.posts,
  });

  User copyWith({
    String? avatarUrl,
    String? name,
    int? followers,
    List<Post>? posts,
  }) {
    return User(
      avatarUrl: avatarUrl ?? this.avatarUrl,
      name: name ?? this.name,
      followers: followers ?? this.followers,
      posts: posts ?? this.posts,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'avatarUrl': avatarUrl,
      'name': name,
      'followers': followers,
      'posts': posts.map((x) => x.toMap()).toList(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      avatarUrl: map['avatarUrl'],
      name: map['name'],
      followers: map['followers'],
      posts: List<Post>.from(map['posts']?.map((x) => Post.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(avatarUrl: $avatarUrl, name: $name, followers: $followers, posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.avatarUrl == avatarUrl &&
        other.name == name &&
        other.followers == followers &&
        listEquals(other.posts, posts);
  }

  @override
  int get hashCode {
    return avatarUrl.hashCode ^
        name.hashCode ^
        followers.hashCode ^
        posts.hashCode;
  }
}
