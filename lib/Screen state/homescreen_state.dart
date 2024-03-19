import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CardController extends GetxController {
  RxInt selectedCard = 0.obs;

  void updateCard(int index) {
    selectedCard.value = index;
  }
}
