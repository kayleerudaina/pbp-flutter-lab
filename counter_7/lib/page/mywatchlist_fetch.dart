import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/models/mywatchlist_model.dart';

List<MyWatchlist> listMyWatchlistData = [];

Future<List<MyWatchlist>> fetchMyWatchlist() async {
      var url = Uri.parse('https://newappmvt.herokuapp.com/mywatchlist/json/');
      var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
      );

      // melakukan decode response menjadi bentuk json
      var data = jsonDecode(utf8.decode(response.bodyBytes));

      // melakukan konversi data json menjadi object MyWatchlist
      List<MyWatchlist> listMyWatchlist = [];
      for (var d in data) {
        if (d != null) {
            listMyWatchlist.add(MyWatchlist.fromJson(d));
            listMyWatchlistData.add(MyWatchlist.fromJson(d));
        }
      }

      return listMyWatchlist;
    }