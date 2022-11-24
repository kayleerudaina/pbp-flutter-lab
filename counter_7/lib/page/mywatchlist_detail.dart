import 'package:flutter/material.dart';
import 'package:counter_7/models/mywatchlist_model.dart';
import 'package:counter_7/component/drawer.dart';

class MyWatchlistDetailPage extends StatelessWidget {
  const MyWatchlistDetailPage({super.key, required this.myWatchList});

  final MyWatchlist myWatchList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watchlist'),
      ),
      drawer: buildDrawer(context),
      body: Container(
        child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Stack(children: [
          Column(
            children: [
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      myWatchList.fields.title,
                      style:
                          const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ]),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Release Date: ",
                        style: TextStyle(fontSize: 20, 
                            fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                      ),
                      Text(
                          myWatchList.fields.releaseDate.toString().substring(0, 10),
                          style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Rating: ",
                        style: TextStyle(fontSize: 20, 
                            fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                      ),
                      Text(myWatchList.fields.rating.toString(),
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Status: ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                          myWatchList.fields.watched
                              ? "Watched!"
                              : "Not watched :(",
                          style: const TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Review: ",
                          style: TextStyle(fontSize: 20, 
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(children: [
                    Flexible(
                      child: Text(
                          myWatchList.fields.review.toString(),
                          style: TextStyle(fontSize: 20)),
                    )
                  ])
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size.fromHeight(50), 
                ),
                child: const Text(
                  "Back", style: TextStyle(color: Colors.white)
                  ),
              )
            ],
          ),
        ]),
      )),
    );
  }
}