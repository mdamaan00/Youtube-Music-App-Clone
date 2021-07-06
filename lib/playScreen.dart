import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class playScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<playScreen> {
  Icon play_button = Icon(
    Icons.play_arrow,
    size: 35,
  );
  int tapping_play = 0;

  Icon repeat_button = Icon(Icons.repeat);
  int tapping_repeat = 0;

  Icon shuffle_icon = Icon(Icons.shuffle);
  int tapping_shuffle = 0;

  Icon dislike = Icon(Icons.thumb_down_off_alt);
  int tap_dislike = 0;

  Icon like = Icon(Icons.thumb_up_off_alt);
  int tap_like = 0;

  AudioPlayer _player;
  AudioCache cache;
  Duration position = new Duration();
  Duration musiclength = new Duration();

  Widget slider() {
    return Slider(
        activeColor: Colors.white,
        inactiveColor: Colors.grey[800],
        value: position.inSeconds.toDouble(),
        max: musiclength.inSeconds.toDouble(),
        onChanged: (value) {
          seekToSec(value.toInt());
        });
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  dynamic m = 0;
  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    cache = AudioCache(fixedPlayer: _player);
    _player.durationHandler = (d) {
      setState(() {
        musiclength = d;
      });
    };
    _player.positionHandler = (p) {
      setState(() {
        position = p;
        if (position.inSeconds.remainder(60).toString().length == 1) {
          m = 0;
        } else {
          m = "";
        }
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            SafeArea(
              child: Container(
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                // Within the SecondRoute widget
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.expand_more,
                                  size: 30,
                                ),
                              ),
                              Text(
                                "Song",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Icon(Icons.more_vert)
                            ],
                          ),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 70.0),
                                child: Card(
                                  child: SizedBox(
                                    height: 320,
                                    width: 320,
                                    child: Hero(
                                      tag: 'onmyway',
                                      child: Image.network(
                                        "https://i1.sndcdn.com/artworks-000523641915-lo2qzf-t500x500.jpg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                        onTap: () => setState(() {
                                              if (tap_dislike == 0) {
                                                dislike =
                                                    Icon(Icons.thumb_down);
                                                tap_dislike = 1;
                                              } else {
                                                dislike = Icon(
                                                    Icons.thumb_down_off_alt);
                                                tap_dislike = 0;
                                              }
                                            }),
                                        child: dislike),
                                    Text(
                                      "On my way",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    GestureDetector(
                                        onTap: () => setState(() {
                                              if (tap_like == 0) {
                                                like = Icon(Icons.thumb_up);
                                                tap_like = 1;
                                              } else {
                                                like = Icon(
                                                    Icons.thumb_up_off_alt);
                                                tap_like = 0;
                                              }
                                            }),
                                        child: like),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text("Alan Walker"),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    slider(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              "${position.inMinutes}:${m}${position.inSeconds.remainder(60)}"),
                                          Text(
                                              "${musiclength.inMinutes}:${musiclength.inSeconds.remainder(60)}"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    child: shuffle_icon,
                                    onTap: () => setState(() {
                                      if (tapping_shuffle == 0) {
                                        shuffle_icon = Icon(Icons.shuffle);
                                        tapping_shuffle = 1;
                                      } else {
                                        shuffle_icon = Icon(Icons.shuffle_on);
                                        tapping_shuffle = 0;
                                      }
                                    }),
                                  ),

                                  Icon(Icons.skip_previous),

                                  GestureDetector(
                                    onTap: () => setState(() {
                                      if (tapping_play == 0) {
                                        cache.play("OnMyWay.mp3");
                                        play_button = Icon(
                                          Icons.pause,
                                          size: 30,
                                        );
                                        tapping_play = 1;
                                      } else {
                                        _player.pause();
                                        play_button = Icon(
                                          Icons.play_arrow,
                                          size: 35,
                                        );

                                        tapping_play = 0;
                                      }
                                    }),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Container(
                                        child: play_button,
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  //Icon(Icons.play_arrow_outlined),
                                  Icon(Icons.skip_next),
                                  GestureDetector(
                                    onTap: () => setState(() {
                                      if (tapping_repeat == 0) {
                                        repeat_button = Icon(Icons.repeat_on);
                                        tapping_repeat = 1;
                                      } else if (tapping_repeat == 1) {
                                        repeat_button = Icon(Icons.repeat_one);
                                        tapping_repeat = 2;
                                      } else {
                                        repeat_button = Icon(Icons.repeat);
                                        tapping_repeat = 0;
                                      }
                                    }),
                                    child: repeat_button,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
