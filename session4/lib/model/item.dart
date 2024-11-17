class Item {
  final int id;
  final String shopName;
  final String name;
  final int sale;
  final bool isSale;
  final double people;
  final int price;
  final bool like;
  final String location;

  Item(
      {required this.location,
      required this.id,
      required this.shopName,
      required this.name,
      required this.sale,
      required this.isSale,
      required this.people,
      required this.price,
      required this.like});
}
