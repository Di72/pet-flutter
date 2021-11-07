import 'package:get/get.dart';

class AnswersController extends GetxController {
  // bool _isAnswered = false;
  // bool get isAnswered => this._isAnswered;

  RxBool _isRight = false.obs;
  RxBool get isRight => this._isRight;

  RxInt _selectedAns = 69.obs;
  RxInt get selectedAns => this._selectedAns;

  void checkAns(int selectedIndex) {
    _selectedAns.value = selectedIndex;
    print(isRight);
    print(selectedIndex);
    if (selectedIndex == 3) _isRight.value = true;
  }

  void resetQuiz() {
    _isRight.value = false;
    _selectedAns.value = 69;
  }
}
