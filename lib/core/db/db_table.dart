enum DbTable {
  image;

  String getName() {
    switch (this) {
      case image: return 'images';
    }
  }
}