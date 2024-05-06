import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MovieProvider extends ChangeNotifier {
  String cinemaTitle = '';
  String imageURL = '';
  String releasedDate = '';
  String director = '';
  String ratings = '';
  String genre = '';
  String plot = '';
  String runtime = '';
  String type = '';

  Future<void> getData(String value) async {
    final Dio dio = Dio();
    final response =
        await dio.get("https://www.omdbapi.com/?t=$value&apikey=2dec889e");

    cinemaTitle = response.data["Title"];
    imageURL = response.data["Poster"];
    releasedDate = response.data["Released"];
    director = response.data["Director"];
    ratings = response.data["Ratings"][0]["Value"].toString();
    genre = response.data["Genre"];
    plot = response.data["Plot"];
    runtime = response.data["Runtime"];
    type = response.data["Type"];
    // print(ratings);

    notifyListeners();
  }
}
