extension Followers on num {
  String formatFollowers() {
    if (this >= 1000000) {
      return '${this ~/ 1000000} M';
    }
    if (this >= 1000) {
      return '${this ~/ 1000} K';
    }
    return '${this}';
  }
}
