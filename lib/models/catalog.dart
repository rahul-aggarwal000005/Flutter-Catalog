class Item {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final Object rating;

  Item(this.id, this.title, this.price, this.description, this.category,
      this.image, this.rating);

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map["id"],
      map["title"],
      map["price"].toDouble(),
      map["description"],
      map["category"],
      map["image"],
      map["rating"],
    );
  }
}

class CatalogModel {
  static var items = [];
}
