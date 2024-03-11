import 'package:get/get.dart';

class OnboardingState extends GetxController {
  RxInt onboardingPage = 0.obs;
  String _first = "Enter Tepnoty for easy communication and connections";
  final String _second = "Explore AI and human connections with Tepnoty.";
  final String _thired =
      "Start using Tepnoty's AI chats and calls effortlessly.";

  RxList<String> get onboardingStateImages => [
        "assets/images/onboarding1.jpeg",
        "assets/images/onboarding2.jpeg",
        "assets/images/onboarding3.jpeg",
      ].obs;
// assets\images\dataset3rd.jpeg
  // assets\images\dataset2nd.jpeg
  RxList<String> get onBoardingHeaderText => [
        "Welcome To Tepnoty",
        "AI and Human Connections",
        "Get Started with Tepnoty",
      ].obs;

  RxList<String> get onBoardingSubText => [_first, _second, _thired].obs;

  void nextPage() {
    if (onboardingPage < 2) {
      onboardingPage++;
    }
  }

  void lastPage() {
    if (onboardingPage > 0) onboardingPage--;
  }
}
