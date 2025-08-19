import 'package:get/get.dart';

class ExpandedTextController extends GetxController {
  var isExpanded = false.obs;

  void setToggle() {
    isExpanded.value = !isExpanded.value;
  }
}
