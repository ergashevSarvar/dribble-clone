import 'package:dribble/util/exercises_title.dart';
import 'package:flutter/material.dart';

import '../util/emoticon_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Catalog'),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // greetings row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Sarvar!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "30 Nov, 2022",
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),

                      // Notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  // Search Bar
                  SizedBox(height: 25),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  // how do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 25),

                  // 4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // BAD
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: "😫",
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Bad",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      //fine
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: "🙂",
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Fine",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      //well
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: "😃",
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Well",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      //excellent
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: "🤩",
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Excellent",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        // exercises heading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Exercises",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                        // Listview of exercises
                        SizedBox(height: 20),
                        Expanded(
                          child: ListView(
                            children: [
                              ExercisesTitle(
                                  icon: Icons.favorite,
                                  exerciseName: "Speaking Skills",
                                  numberOfExercises: 16,
                                  color: Colors.orange),
                              ExercisesTitle(
                                  icon: Icons.read_more,
                                  exerciseName: "Reading Skills",
                                  numberOfExercises: 8,
                                  color: Colors.blue),
                              ExercisesTitle(
                                  icon: Icons.edit,
                                  exerciseName: "Writing Skills",
                                  numberOfExercises: 55,
                                  color: Colors.green),
                              ExercisesTitle(
                                  icon: Icons.hearing,
                                  exerciseName: "Listening Skills",
                                  numberOfExercises: 36,
                                  color: Colors.amber),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
