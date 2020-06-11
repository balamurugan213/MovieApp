import 'package:flutter/material.dart';
import 'package:movieapp/models/movieModel.dart';
import 'package:movieapp/models/text.dart';
import 'package:movieapp/widget/movieWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Color(0xFF1E1E1E),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              Container(
                color: Colors.black12,
                height: 100,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: width * 0.77,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFBCBCBC).withOpacity(0.3),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFBCBCBC).withOpacity(0.2),
                          ),
                          child: Center(
                            child: IconButton(
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                iconSize: 40,
                                onPressed: null),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "Recent Movies",
                      style: nameStyle,
                    ),
                    Text(
                      "see All",
                      style: nameSmallStyle,
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 280.0,
                color: Colors.white.withOpacity(0.02),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: movies.length,
                    itemBuilder: (BuildContext context, int index) {
                      Movies movie = movies[index];
                      return MovieWidget(
                        movie: movie,
                      );
                    }),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 100.0,
                color: Colors.white.withOpacity(0.02),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: years.length,
                    itemBuilder: (BuildContext context, int index) {
                      Year year = years[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          // // height: 80,
                          // // width: 120,
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(10),
                          //     color: Colors.amber),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image(
                                      image: AssetImage(year.yearImageUrl),
                                      height: 100.0,
                                      width: 150.0,
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                height: 100.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xFF333333).withOpacity(0.4),
                                ),
                                child: Center(
                                    child: Text(
                                  year.year,
                                  style: yearTextStyle,
                                )),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "CELIBRITIES",
                      style: nameStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 170.0,
                color: Colors.white.withOpacity(0.02),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: celebrities.length,
                    itemBuilder: (BuildContext context, int index) {
                      Celebrity cele = celebrities[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          // // height: 80,
                          // // width: 120,
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(10),
                          //     color: Colors.amber),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image(
                                      image: AssetImage(cele.celeImageUrl),
                                      height: 170.0,
                                      width: 150.0,
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                height: 170.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xFFBCBCBC).withOpacity(0.5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        cele.celebrity,
                                        style: celenameStyle,
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
