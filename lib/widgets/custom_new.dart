import 'package:flutter/material.dart';
import 'package:newsapp_clone1/models/new_model.dart';

class CustomNew extends StatelessWidget {
  final List<NewModel> readyNews;
  const CustomNew({required this.readyNews});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: readyNews.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: NetworkImage(readyNews[index]
                            .newImage ?? // or cached network image widget
                        "https://upload.wikimedia.org/wikipedia/commons/7/78/Image.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                readyNews[index].newTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                readyNews[index].newDis,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black54),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          );
        });
  }
}
