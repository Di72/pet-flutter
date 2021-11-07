import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/controllers/answers.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    Key? key,
    required AnswersController controller,
    required Size size,
  })  : _controller = controller,
        _size = size,
        super(key: key);

  final AnswersController _controller;
  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding * 2),
      child: Center(
          child: InkWell(
        onTap: () => _controller.resetQuiz(),
        child: Obx(() => AnimatedOpacity(
              opacity: _controller.selectedAns.value == 69 ? 0 : 1,
              duration: const Duration(milliseconds: 400),
              child: Icon(Icons.change_circle,
                  size: _size.width * 0.2,
                  color: _controller.selectedAns.value == 69
                      ? Theme.of(context).backgroundColor.withOpacity(0)
                      : Theme.of(context).backgroundColor.withOpacity(1)),
            )),
      )),
    );
  }
}
