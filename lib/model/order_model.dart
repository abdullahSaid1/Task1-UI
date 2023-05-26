class Order {
  int? id;
  String? date;
  double? totalPrice;
  String? status;

  Order(
      {required this.id,
      required this.date,
      required this.status,
      required this.totalPrice});
}
