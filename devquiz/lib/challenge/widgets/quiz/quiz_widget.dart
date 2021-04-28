import 'package:devquiz/challenge/widgets/answer/answer_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {

  final String title;

  QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading
          ),
          SizedBox( 
            height: 24,
          ),
          AnswerWidget(
            isRight: true,
            isSelected: false,
            title: "Exemplo de resposta bem bastente longa mesmo, olha só como sou uma resposta longa, garanto que você nunca viu uma resposta tão grande assim né?!",
          ),
          AnswerWidget(
            isSelected: true,
            isRight: true,
            title: "Exemplo de resposta não tãaao longa, mas olha só como sou uma resposta longa",
          ),
          AnswerWidget(
            isRight: false,
            isSelected: true,
            title: "Exemplo de resposta bem curta.",
          ),
        ],
      ),
    );
  }
}