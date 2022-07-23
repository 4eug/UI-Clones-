// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ui_screens/util/emoticon.dart';
import 'package:ui_screens/util/exercise_tile.dart';

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
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Hi Eugene!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(height: 8),
                          Text(
                            '28 July, 2022',
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ]),
                const SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.more_horiz, color: Colors.white),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        EmoticonFace(emoticonFace: '😒'),
                        SizedBox(height: 8),
                        Text(
                          'Bad',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        EmoticonFace(emoticonFace: '😀'),
                        SizedBox(height: 8),
                        Text(
                          'Fine',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        EmoticonFace(emoticonFace: '😁'),
                        SizedBox(height: 8),
                        Text(
                          'Well',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        EmoticonFace(emoticonFace: '🥳'),
                        SizedBox(height: 8),
                        Text(
                          'Excellent',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                )),
            child: Center(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Exercises',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Icon(Icons.more_horiz)
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: const [
                      ExerciseTile(
                        icon: Icons.favorite,
                        color: Colors.orange,
                        exerciseName: 'Speaking Skills',
                        numberOfExercises: 16,
                      ),
                      ExerciseTile(
                        icon: Icons.person,
                        color: Colors.blue,
                        exerciseName: 'Reading Skills',
                        numberOfExercises: 8,
                      ),
                      ExerciseTile(
                        icon: Icons.star,
                        color: Colors.green,
                        exerciseName: 'Riding Skills',
                        numberOfExercises: 20,
                      )
                    ],
                  ),
                )
              ],
            )),
          )),
        ],
      )),
    );
  }
}
