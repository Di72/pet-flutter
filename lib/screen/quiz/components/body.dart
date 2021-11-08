import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/constants.dart';
import 'package:flutter_application_1/controllers/answers.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_application_1/screen/quiz/components/answers.dart';
import 'package:flutter_application_1/screen/quiz/components/reset_button.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    AnswersController _controller = Get.put(AnswersController());

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: _size.height * 0.1,
            ),
            Obx(() => Text(
                  "${S.of(context).question}: 2 + 2 = ${_controller.isRight.value ? 4 : '?'}",
                  style: const TextStyle(fontSize: 20),
                )),
            SizedBox(
              height: _size.height * 0.05,
            ),
            Answers(controller: _controller),
            ResetButton(controller: _controller, size: _size)
          ],
        ),
      ),
    );
  }
}
