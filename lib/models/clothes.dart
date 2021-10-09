class Clothes {
  String title;
  String subTtile;
  String price;
  String imgUrl;
  List<String> detailUrl;

  Clothes(
      {required this.title,
      required this.subTtile,
      required this.price,
      required this.detailUrl,
      required this.imgUrl});

  static List<Clothes> generateClothes() {
    return [
      Clothes(
        title: "Gucci oversize",
        subTtile: "Hoodie",
        price: "\$79.99",
        detailUrl: ["assets/images/arrival1.png", "assets/images/detail2.png"],
        imgUrl: "assets/images/arrival1.png",
      ),
      Clothes(
        title: "\Man Coat",
        subTtile: "Rain Jacket",
        price: "\$39.99",
        detailUrl: ["assets/images/arrival2.png", "assets/images/detail3.png"],
        imgUrl: "assets/images/arrival2.png",
      ),
    ];
  }
}
