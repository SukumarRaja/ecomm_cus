class CartModel {
  dynamic id;
  dynamic name;
  dynamic price;
  dynamic image;
  dynamic quantity;
  dynamic isExist;
  dynamic time;

  CartModel({
    this.id,
    this.name,
    this.price,
    this.image,
    this.quantity,
    this.isExist,
    this.time,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        image: json["image"],
        quantity: json["quantity"],
        isExist: json["isExist"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "image": image,
        "quantity": quantity,
        "isExist": isExist,
        "time": time,
      };
}
