import 'package:flutter/material.dart';
import 'package:newsapp_clone1/models/card_model.dart';
import 'package:newsapp_clone1/view/news_from_card.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: cardList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NewsFromCard(
                      q: cardList[index].text,
                    );
                  }));
                  print(cardList[index].text);
                  //   print(q);
                },
                child: Container(
                  height: 80,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(cardList[index].image),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      cardList[index].text,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
