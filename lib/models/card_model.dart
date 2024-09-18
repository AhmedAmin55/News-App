class CardModel {
  String image;
  String text;
  CardModel({
    required this.image,
    required this.text,
  });
}

List<CardModel> cardList = [
  CardModel(image: "assets/entertaiment.avif", text: "Entertaiment"),
  CardModel(image: "assets/health.avif", text: "Health"),
  CardModel(image: "assets/science.avif", text: "Science"),
  CardModel(image: "assets/technology.jpeg", text: "Technology"),
];
