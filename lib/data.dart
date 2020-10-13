import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BookData extends StatefulWidget {
  @override
  _BookDataState createState() => _BookDataState();
}

class _BookDataState extends State<BookData> {
  Future<Album> futureAlbum;
  List res;
  Map resv;
  List images = [];
  List authorNames = [];
  List titles = [];
  List formatText = [];
  List formatHTML = [];

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Data Example'),
      ),
      body: Center(
        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              res = snapshot.data.results;
              // print(res);
              val(res);
              return Text('$images');
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  void val(List res) {
    for (var x in res) {
      resv = x;
      //print(x);
      // images.add(resv['formats']['image/jpeg']);
      authorNames.add(resv['authors']);
      titles.add(resv['title']);
      formatText.add(resv['formats']['text/plain']);
      formatHTML.add(resv['formats']['text/html']);
    }
    // print(images);
    // print('$authorNames');
    //print('$titles');
    // print('$formatText');
    //print('$formatHTML');
  }
}

Future<Album> fetchAlbum() async {
  final response = await http.get('http://gutendex.com/books/');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int count;
  final String next;
  final String previous;
  final List<dynamic> results;

  Album({this.count, this.next, this.previous, this.results});

  factory Album.fromJson(Map<dynamic, dynamic> json) {
    return Album(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      results: json['results'],
    );
  }
}
