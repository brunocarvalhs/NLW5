import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/widgets/progress_indication/progress_indication_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicationWidget extends PreferredSize {
  QuestionIndicationWidget()
      : super(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(
            top: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Questão 04",
                          style: AppTextStyles.body,
                        ),
                        Text(
                          "de 10",
                          style: AppTextStyles.body,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ProgressIndicationWidget(
                      value: 0.7,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
}
