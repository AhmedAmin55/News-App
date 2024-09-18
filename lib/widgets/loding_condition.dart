import 'package:flutter/material.dart';
import 'package:newsapp_clone1/models/new_model.dart';
import 'package:newsapp_clone1/services/get_news_services.dart';
import 'package:newsapp_clone1/widgets/custom_new.dart';

class BodyView extends StatefulWidget {
  const BodyView({super.key, required this.q});
  final String q;
  @override
  State<BodyView> createState() => _BodyViewState();
}

/*
   you can get data from getMethod() in two ways :
   1- you can use FutureBuilder widget 
   2- you can do every thing by yourself:
    step 1 
      create initState() to get response one time by another method before build widgets
      by build() funtion
    step 2
      create method() to get response becouse initState() cann't be 
      an async function 
    step 3 
      use if condition to specify any widget you can use it 
*/
class _BodyViewState extends State<BodyView> {
  bool isLoading = true;
  List<NewModel> readyNews = [];
  var future;
  @override
  void initState() {
    super.initState();
    future = GetNewsServices().getNews(q: widget.q);
    // getNews();
  }

  // Future<void> getNews() async {
  //   readyNews = await GetNewsServices().getNews();
  //   isLoading = false;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CustomNew(
              readyNews: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Text(
                  "Not Found Data Try Later",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });

    // return isLoading
    // ? const SliverToBoxAdapter(
    //     child: Center(child: CircularProgressIndicator()),
    //   )
    //     : readyNews.isEmpty
    // ? SliverToBoxAdapter(
    //     child: Center(
    //       child: Text("Not Found Data Try Later"),
    //     ),
    //   )
    // : CustomNew(
    //     readyNews: readyNews,
    //   );
  }
}
