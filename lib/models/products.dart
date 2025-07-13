class CatalogModel{
  static final items = [
    Item(
    id: "1",
    name: "Smartphone",
    desc: "A sleek smartphone with all-day battery life.",
    price: "₹12,999",
    color: "Black",
  image: "https://picsum.photos/id/1/200/300")
];
}

class Item{
  late final String id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;
  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}
