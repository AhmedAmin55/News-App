class NewModel {
  String? newImage;
  String newTitle;
  String newDis;
  NewModel({
    required this.newImage,
    required this.newTitle,
    required this.newDis,
  });

  factory NewModel.fromjson(json) {
    return NewModel(
      newImage: json['urlToImage'],
      newTitle: json['title'],
      newDis: json['description'],
    );
  }
}

List<NewModel> newsList = [
  NewModel(
    newImage: "https://upload.wikimedia.org/wikipedia/commons/7/78/Image.jpg",
    newTitle: "dshgou;hgoiurehghuhougoiuhjtshgouhr",
    newDis: "dsngljrenlj nktsme;hm",
  )
];
