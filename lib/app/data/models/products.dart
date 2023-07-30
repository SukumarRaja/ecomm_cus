class Product {
  dynamic totalSize;
  dynamic typeId;
  dynamic offset;
  List<ProductElement>? products;

  Product({
    this.totalSize,
    this.typeId,
    this.offset,
    this.products,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        totalSize: json["total_size"],
        typeId: json["type_id"],
        offset: json["offset"],
        products: List<ProductElement>.from(
            json["products"].map((x) => ProductElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total_size": totalSize,
        "type_id": typeId,
        "offset": offset,
        "products": List<dynamic>.from(products!.map((x) => x.toJson())),
      };
}

class ProductElement {
  dynamic id;
  dynamic name;
  dynamic description;
  dynamic price;
  dynamic stars;
  dynamic img;
  dynamic location;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic typeId;

  ProductElement({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stars,
    this.img,
    this.location,
    this.createdAt,
    this.updatedAt,
    this.typeId,
  });

  factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stars: json["stars"],
        img: json["img"],
        location: json["location"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        typeId: json["type_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "stars": stars,
        "img": img,
        "location": location,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "type_id": typeId,
      };
}
