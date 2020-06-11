import 'package:flutter/material.dart';
import 'package:movieapp/models/movieModel.dart';
//import 'package:movieapp/pages/descriptionPage.dart';
import 'package:movieapp/pages/movieDescriptionPage.dart';

class MovieWidget extends StatelessWidget {
  final Movies movie;
  const MovieWidget({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (_) => MovieDescription(movie: movie))),
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: 215.0,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Positioned(
              bottom: 5.0,
              child: Hero(
                tag: movie.movie_name,
                child: Container(
                  height: 130,
                  width: 210,
                  decoration: BoxDecoration(
                    color: Color(0xFFBCBCBC), //Color(0xFFFFF7D1),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Material(
                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: 55,
                                height: 50,
                                color: Colors.black.withOpacity(0.10),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        "IMDB",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                      Text(
                                        movie.imdb.toString(),
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w800,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Material(
                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: 55,
                                height: 50,
                                color: Colors.black.withOpacity(0.10),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        "Rated",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                      Text(
                                        movie.sensor.toString(),
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w800,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Material(
                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: 55,
                                height: 50,
                                color: Colors.black.withOpacity(0.10),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        "RT",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                      Text(
                                        "${movie.rotten.toString()}%",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w800,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10.0),
              //   boxShadow: [
              //     BoxShadow(
              //         color: Colors.black26,
              //         offset: Offset(0.0, 2.0),
              //         blurRadius: 6.0)
              //   ],
              // ),
              child: Stack(
                children: <Widget>[
                  Hero(
                    tag: movie.imageUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        height: 180.0,
                        width: 180.0,
                        image: AssetImage(movie.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10.0,
                    bottom: 10.0,
                    child: Hero(
                      tag: "name${movie.imageUrl}",
                      child: Material(
                        color: Colors.transparent,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  movie.movie_name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
