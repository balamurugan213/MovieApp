import 'package:flutter/material.dart';
import 'package:movieapp/models/movieModel.dart';
import 'package:movieapp/models/text.dart';

class MovieDescription extends StatefulWidget {
  final Movies movie;

  const MovieDescription({Key key, this.movie}) : super(key: key);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<MovieDescription> {
  bool bookmark = false;
  bool like = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        color: Color(0xFF1E1E1E),
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 710,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF7C7C7C).withOpacity(0.5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: width,
                          //color: Colors.amber,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Description",
                                style: descriptionBoldStyle,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 130,
                                child: ListView(
                                  children: <Widget>[
                                    Text(
                                      widget.movie.description,
                                      style: descriptionStyle,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
                Hero(
                  tag: widget.movie.movie_name,
                  child: Container(
                    height: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFFBCBCBC)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Material(
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 100,
                                  height: 70,
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
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.5,
                                          ),
                                        ),
                                        Text(
                                          widget.movie.imdb.toString(),
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 25,
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
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 100,
                                  height: 70,
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
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.5,
                                          ),
                                        ),
                                        Text(
                                          widget.movie.sensor.toString(),
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 25,
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
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 100,
                                  height: 70,
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
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.5,
                                          ),
                                        ),
                                        Text(
                                          "${widget.movie.rotten.toString()}%",
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 25,
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
                Container(
                  height: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Hero(
                        tag: widget.movie.imageUrl,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(
                            height: 410,
                            width: width,
                            image: AssetImage(widget.movie.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30.0, left: 8.0, right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.black.withOpacity(0.5),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black54,
                                        offset: Offset(0.0, 8.0),
                                        blurRadius: 6.0),
                                  ]),
                              child: IconButton(
                                icon: Icon(Icons.arrow_back),
                                color: Colors.white,
                                iconSize: 30.0,
                                onPressed: () => Navigator.pop(context),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black54,
                                        offset: Offset(0.0, 8.0),
                                        blurRadius: 6.0),
                                  ]),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.thumb_up),
                                    color: like
                                        ? Colors.yellow[700]
                                        : Colors.white,
                                    iconSize: 30.0,
                                    onPressed: () {
                                      setState(() {
                                        like = !like;
                                      });
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.bookmark),
                                    color: bookmark
                                        ? Colors.yellow[700]
                                        : Colors.white,
                                    iconSize: 30.0,
                                    onPressed: () {
                                      setState(() {
                                        bookmark = !bookmark;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        left: 10.0,
                        bottom: 10.0,
                        child: Hero(
                          tag: "name${widget.movie.imageUrl}",
                          child: Material(
                            color: Colors.transparent,
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      widget.movie.movie_name,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
