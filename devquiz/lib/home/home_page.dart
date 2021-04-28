import 'package:devquiz/home/widgets/appbar/app_bar.dart';
import 'package:devquiz/home/widgets/level_button/level_button.dart';
import 'package:devquiz/home/widgets/quiz_card/quiz_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LevelButton(label: "Fácil"),
                  LevelButton(label: "Médio"),
                  LevelButton(label: "Difícil"),
                  LevelButton(label: "Perito"),
                ],
              ),
            ),
            SizedBox(height: 24),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  QuizCard(),
                  QuizCard(),
                  QuizCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}