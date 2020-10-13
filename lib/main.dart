import 'package:bookapp/data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Center(
            child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://franchiseindia.s3.ap-south-1.amazonaws.com/uploads/content/edu/art/5cac6b9e846ce.jpeg"),
                        fit: BoxFit.cover)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: RaisedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.domain),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'FICTION',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 140,
                              ),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookData()));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: RaisedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.domain),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'COMEDY',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 140,
                              ),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookData()),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: RaisedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.domain),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'DRAMA',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 140,
                              ),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookData()));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: RaisedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.domain),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'HISTORY',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 140,
                              ),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookData()));
                          },
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}
