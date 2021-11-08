import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/constants.dart';
import 'package:flutter_application_1/controllers/answers.dart';
import 'package:flutter_application_1/models/Answers.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class FieldAnswer extends StatelessWidget {
  const FieldAnswer({
    Key? key,
    required AnswersController controller,
    required this.index,
  })  : _controller = controller,
        super(key: key);

  final AnswersController _controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Obx(() => TextButton(
            onPressed: () => _controller.selectedAns.value == 69
                ? _controller.checkAns(index)
                : {},
            style: ElevatedButton.styleFrom(
              primary: (_controller.selectedAns.value != 69 && index == 3)
                  ? Colors.green
                  : index == _controller.selectedAns.value
                      ? Colors.red
                      : Theme.of(context).primaryColor,
              side: BorderSide(
                  color: (_controller.selectedAns.value != 69 && index == 3)
                      ? Colors.green
                      : index == _controller.selectedAns.value
                          ? Colors.red
                          : Theme.of(context).backgroundColor,
                  width: 2),
              padding: const EdgeInsets.all(kDefaultPadding),
              shape: const StadiumBorder(),
            ),
            child: Center(
              child: Text(answers[index].text,
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                  )),
            ),
          )),
    );
  }
}
