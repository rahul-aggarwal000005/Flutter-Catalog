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
}

class CatalogModel {
  static final items = [
    Item(
      1,
      "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
      10.3,
      "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
      "men's clothing",
      "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
      {"rate": 3.9, "count": 120},
    )
  ];
}
