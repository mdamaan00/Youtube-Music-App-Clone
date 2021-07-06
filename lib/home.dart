import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_first_app/album.dart';
import 'package:my_first_app/playScreen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              child: Text(
                "Your favourites",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.all(15),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Album()),
                            );
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                        Text("Imagine Dragons"),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => playScreen()),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            child: SizedBox(
                              width: 160,
                              height: 160,
                              child: Hero(
                                tag: "onmyway",
                                child: Image.network(
                                  "https://m.media-amazon.com/images/M/MV5BNWExM2JlMjctOGMxNi00NGNjLTg4NzMtZDVhOGI5ZTY3NDhmXkEyXkFqcGdeQXVyMjgzMzAzMjE@._V1_.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            child: Text("On My Way"),
                            padding: EdgeInsetsDirectional.only(start: 8),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          child: SizedBox(
                            width: 160,
                            height: 160,
                            child: Image.network(
                              "https://i1.sndcdn.com/artworks-000146368171-9ly9ml-t500x500.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          child: Text("Ten Feet Tall"),
                          padding: EdgeInsetsDirectional.only(start: 8),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          child: SizedBox(
                            width: 160,
                            height: 160,
                            child: Image.network(
                              "https://i.scdn.co/image/ab67616d0000b2733b1110ca4f2f4dd85f5ee49e",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          child: Text("Summer Air"),
                          padding: EdgeInsetsDirectional.only(start: 8),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          child: SizedBox(
                            width: 160,
                            height: 160,
                            child: Image.network(
                              "https://www.exclusivetribe.net/wp-content/uploads/2019/09/French-Montana-Writing-on-the-wall.jpeg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          child: Text("Writing On The Wall"),
                          padding: EdgeInsetsDirectional.only(start: 8),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 15,
                top: 30,
              ),
              child: Text(
                "LISTEN AGAIN",
                style: TextStyle(fontSize: 12, fontFamily: 'Aria'),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 15,
                top: 5,
              ),
              child: Text(
                "Your Music",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto"),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 10, top: 5),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Card(
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToFpKL9tWrYAHBrLupspnNPdDjYDgw9TUHzw&usqp=CAU",
                                fit: BoxFit.fill),
                          ),
                        ),
                        Text("lut gaye")
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcFfuj_lWl_XHfUtBYzFAakqktFu8YyZPQfw&usqp=CAU",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text("teri ore")
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.network(
                              "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text("Chacha Rap")
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.network(
                              "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text("Chacha Rap")
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.network(
                              "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text("Chacha Rap")
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.network(
                              "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text("Chacha Rap")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 15,
                top: 30,
              ),
              child: Text(
                "PLAY YOUR SONG",
                style: TextStyle(fontSize: 12, fontFamily: 'Aria'),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 15,
                top: 5,
                bottom: 10,
              ),
              child: Text(
                "Quick Picks",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            CarouselSlider(
              items: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Card(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.network(
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 280,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.network(
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 280,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.network(
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 280,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.network(
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 280,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Card(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.network(
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 280,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.network(
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 280,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.network(
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 280,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.network(
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 280,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Card(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.network(
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 280,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.network(
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 280,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.network(
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 280,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.network(
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 280,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ],
                ),
              ],
              options: CarouselOptions(
                height: 250,
                enlargeCenterPage: false,
                autoPlay: false,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: false,
                viewportFraction: 0.95,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
