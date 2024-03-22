import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CardController extends GetxController {
  RxInt selectedCard = 0.obs;
  RxInt lastCard = 0.obs;

  RxList<Map<String, dynamic>> iconTextList = [
    {"icon": Icons.mic_none_rounded, "text": "Voice Note"},
    {"icon": Icons.videocam_outlined, "text": "Video Call"},
    {"icon": Icons.chat, "text": "Chat"},
    {"icon": Icons.call, "text": "Audio Call"},
  ].obs;
  RxList indexIndicator = ["Voice", "Video", "Chat", "Audio"].obs;

  void updateCard(int index) {
    lastCard.value = selectedCard.value;
    selectedCard.value = index;
    var temp1 = iconTextList[selectedCard.value];
    var temp2 = iconTextList[lastCard.value];
    iconTextList.removeAt(selectedCard.value);
    // iconTextList.removeAt(lastCard.value);
    iconTextList.insert(0, temp1);
    // iconTextList.insert(1, temp2);
  }
}
