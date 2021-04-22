import 'package:DevQuiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;
  const QuizWidget({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: ListView(
              children: [
                ...question.awnsers
                    .map((e) => AwnserWidget(
                          isRight: e.isRight,
                          isSelected: false,
                          title: e.title,
                        ))
                    .toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
