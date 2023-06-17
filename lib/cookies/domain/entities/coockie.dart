abstract class Cookie {
  Cookie({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.price,
    this.isPremium = false,
  });

  String name, description, imageUrl;
  bool isPremium;
  double price;
}
