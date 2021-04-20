import 'package:DevQuiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AwnserWidget(
            isRight: false,
            isSelected: true,
            title: "Kit de desenvolvimento de interface de usuário",
          ),
          AwnserWidget(
            isRight: true,
            isSelected: true,
            title:
                "Possibilita a criação de aplicativos compilados nativamente",
          ),
          AwnserWidget(
            isRight: false,
            isSelected: false,
            title: "Acho que é uma marca de café do Himalaia",
          ),
          AwnserWidget(
            isRight: false,
            isSelected: false,
            title: "Possibilita a criação de desktops que são muito incríveis",
          ),
        ],
      ),
    );
  }
}
