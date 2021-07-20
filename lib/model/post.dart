import 'dart:convert';

class Post {
  String imageUrl;
  String date;
  int likes;

  Post({
    required this.imageUrl,
    required this.date,
    required this.likes,
  });

  Post copyWith({
    String? imageUrl,
    String? date,
    int? likes,
  }) {
    return Post(
      imageUrl: imageUrl ?? this.imageUrl,
      date: date ?? this.date,
      likes: likes ?? this.likes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'date': date,
      'likes': likes,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      imageUrl: map['imageUrl'],
      date: map['date'],
      likes: map['likes'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() => 'Post(imageUrl: $imageUrl, date: $date, likes: $likes)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Post &&
        other.imageUrl == imageUrl &&
        other.date == date &&
        other.likes == likes;
  }

  @override
  int get hashCode => imageUrl.hashCode ^ date.hashCode ^ likes.hashCode;
}
