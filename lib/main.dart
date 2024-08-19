import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => basketBall(), // Wrap your app
    ),
  );
}

class basketBall extends StatefulWidget {
  const basketBall({super.key});

  @override
  State<basketBall> createState() => _basketBallState();
}

class _basketBallState extends State<basketBall> {
  int teamA = 0;

  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Center(
            child: Text(
              'Points Counter',
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$teamA',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamA++;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamA += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamA += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 600,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                      endIndent: 98,
                      indent: 50,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$teamB',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamB++;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamB += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamB += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, minimumSize: Size(150, 50)),
                onPressed: () {
                  setState(() {
                    teamA = 0;
                    teamB = 0;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
