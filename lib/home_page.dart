import 'package:flutter/material.dart';
import 'package:flutter_ui/util/emoj_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
              color: Colors.grey,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              color: Colors.grey,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.grey,
            ),
            label: ''),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  // Intro: name and icon notification

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Name

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Jared',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 24),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '23 Jan 2021',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),

                      // Notification

                      Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[500],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ))
                    ],
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  // Search bar

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text('Search...'),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 24,
                  ),

                  // How do you feel?

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel ?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 24,
                  ),
                  // Emojs list

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      EmojFace(emojText: '😢'),
                      EmojFace(emojText: '😜'),
                      EmojFace(emojText: '😂'),
                      EmojFace(emojText: '😃'),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 24,
            ),

            // Bottom

            Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  children: [
                    Text('Hello'),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
