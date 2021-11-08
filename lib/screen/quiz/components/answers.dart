import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/answers.dart';
import 'package:flutter_application_1/models/Answers.dart';
import 'package:flutter_application_1/screen/quiz/components/answer_field.dart';

class Answers extends StatelessWidget {
  const Answers({
    Key? key,
    required AnswersController controller,
  })  : _controller = controller,
        super(key: key);

  final AnswersController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(answers.length,
            (index) => FieldAnswer(controller: _controller, index: index)),
      ],
    );
  }
}
