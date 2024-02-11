

class ItemModel {
  final String name;
  final String price;
  final String image;
  final String category;

  const ItemModel({
    required this.name,
    required this.price,
    required this.image,
    required this.category,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
        name: json['title'],
        price: (json['price']).toString(),
        image: json['image'],
        category: json['category']);
  }
}
