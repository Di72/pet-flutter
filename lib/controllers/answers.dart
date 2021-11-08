import 'package:get/get.dart';

class AnswersController extends GetxController {
  final RxBool _isRight = false.obs;
  RxBool get isRight => _isRight;

  final RxInt _selectedAns = 69.obs;
  RxInt get selectedAns => _selectedAns;

  void checkAns(int selectedIndex) {
    _selectedAns.value = selectedIndex;
    if (selectedIndex == 3) _isRight.value = true;
  }

  void resetQuiz() {
    _isRight.value = false;
    _selectedAns.value = 69;
  }
}
