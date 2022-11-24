import 'package:flutter/material.dart';
import 'package:counter_7/page/mywatchlist_fetch.dart';
import 'package:counter_7/page/mywatchlist_detail.dart';
import 'package:counter_7/component/drawer.dart';

class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({super.key});

  @override
  State<MyWatchlistPage> createState() => _MyWatchlistPageState();
}

class _MyWatchlistPageState extends State<MyWatchlistPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watchlist'),
      ),
      drawer: buildDrawer(context), // Menambahkan drawer
      body: FutureBuilder(
            future: fetchMyWatchlist(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada Watchlist :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), 
                            fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                  color: listMyWatchlistData[index].fields.watched ? Colors.blue : Color.fromARGB(255, 209, 138, 133),
                                  blurRadius: 2.0
                            )
                            ]
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute( 
                                  builder: (context) => MyWatchlistDetailPage(myWatchList: listMyWatchlistData[index])),
                            );
                          },
                          child: Row(
                            children: [
                              Checkbox(
                                value: listMyWatchlistData[index].fields.watched,
                                onChanged: (bool? value) {
                                  setState(() {
                                    listMyWatchlistData[index].fields.watched = value!;
                                    }
                                  );
                                }
                              ),
                              Text(
                                "${snapshot.data![index].fields.title}",
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                    )
                  );
                }
              }
            }
          )

    );
  }
}

