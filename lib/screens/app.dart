import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spotifyapp/models/music.dart';
import 'package:spotifyapp/screens/home.dart';
import 'package:spotifyapp/screens/search.dart';
import 'package:spotifyapp/screens/yourlibrary.dart';

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  AudioPlayer _audioPlayer = new AudioPlayer();
  var Tabs = [];
  int currentTabIndex = 0;
  bool isPlaying = false;
  Music music;
  Widget miniPlayer(Music music, {bool stop = false}) {
    this.music = music;
    if (music == null) {
      return SizedBox();
    }
    if (stop) {
      isPlaying = false;
      _audioPlayer.stop();
    }
    setState(() {});

    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: Colors.redAccent,
      width: deviceSize.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            music.image,
            fit: BoxFit.cover,
          ),
          Text(
            music.name,
            style: TextStyle(color: Colors.white),
          ),
          IconButton(
              onPressed: () async {
                isPlaying = !isPlaying;
                if (isPlaying) {
                  await _audioPlayer.play(music.audioURL);
                } else {
                  await _audioPlayer.pause();
                }
                setState(() {});
              },
              icon: isPlaying
                  ? Icon(
                      Icons.pause,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ))
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Tabs = [Home(miniPlayer), Search(), YourLibrary()];
  }

  //UI design code goes in Build
  @override
  Widget build(BuildContext context) {
    print("Lets Built it");
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        miniPlayer(music),
        BottomNavigationBar(
          elevation: 0.0,
          currentIndex: currentTabIndex,
          onTap: (currentIndex) {
            print("Current Index is : $currentIndex");
            currentTabIndex = currentIndex;
            setState(() {}); // Re-Rendering
          },
          backgroundColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.white),
                title: Text(
                  'Search',
                  style: TextStyle(color: Colors.white),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_books,
                  color: Colors.white,
                ),
                title: Text(
                  'Your Library',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ]),
    );
  }
}
