import 'package:flutter/material.dart';
import 'package:textventure/story_lines.dart';

BookKeeper stories = BookKeeper();

void main() => runApp(const TextVenture());

class TextVenture extends StatelessWidget {
  const TextVenture({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(primaryColor: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text("TextVenture"),
          ),
        ),
        backgroundColor: Colors.blue,
        body: const Stack(
          children: [
            Positioned.fill(
              child: Image(
                image: AssetImage("assets/background.png"),
              ),
            ),
            MainPage(),
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 10),
              child: Center(
                child: Text(
                  stories.getOpener(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0), // Position of the shadow
                        blurRadius: 4.0, // Blur radius of the shadow
                        color: Colors.black, // Color of the shadow
                      ),
                      Shadow(
                        offset: Offset(-2.0, -2.0),
                        blurRadius: 4.0,
                        color: Colors.cyan,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 10, top: 0, bottom: 5),
                child: Text(
                  stories.getContent(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 1.0),
                        blurRadius: 3.0,
                        color: Colors.black.withOpacity(
                            0.8), // Slightly transparent black shadow
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 330,
                    height: 55,
                    child: ElevatedButton(
                      child: Text(
                        stories.getChoiceOne(),
                        style: TextStyle(fontSize: 14),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      onPressed: () {
                        setState(() {
                          stories.incrementStoryNumber(1);
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 10), // Space between buttons
                  SizedBox(
                    width: 330,
                    height: 55,
                    child: ElevatedButton(
                      child: Text(
                        stories.getChoiceTwo(),
                        style: TextStyle(fontSize: 14),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      onPressed: () {
                        setState(() {
                          stories.incrementStoryNumber(2);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ]);
  }
}
