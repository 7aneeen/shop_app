class CategoryModel {
  final String name;
  final String image;

  const CategoryModel({required this.name, required this.image});
}

const catecories = const [
  CategoryModel(name: "Blush", image: "assets/image/blush.jpg"),
  CategoryModel(name: "Bronzer", image: "assets/image/bronzer.jpg"),
  CategoryModel(name: "Eyebrow", image: "assets/image/eyebrow.jpg"),
  CategoryModel(name: "Eyeliner", image: "assets/image/eyeliner.jpg"),
  CategoryModel(name: "Eyeshadow", image: "assets/image/eyeshadow.jpg"),
  CategoryModel(name: "Foundation", image: "assets/image/foundation.jpg"),
  CategoryModel(name: "Lipliner", image: "assets/image/lipliner.jpg"),
  CategoryModel(name: "Lipstick", image: "assets/image/lipstick.jpg"),
  CategoryModel(name: "Mascara", image: "assets/image/mascara.jpg"),
  CategoryModel(name: "Nailpolish", image: "assets/image/nailpolish.jpg"),
];
