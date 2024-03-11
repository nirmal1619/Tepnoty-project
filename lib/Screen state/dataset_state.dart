import 'package:get/get.dart';

class DataSetState extends GetxController {
  RxInt currentPage = 0.obs;
  final String first =
      "It is the collection of data that is used to train the chatbot.Train the chatbot in theway you want it to respond to people ";
  final String second = "( We accept .csv .pdf .josan files only )";
  final String thired =
      "Your Dataset in under review.We will notify you once its done";

  RxList<String> get images => [
        "assets/images/dataset1st.jpeg",
        "assets/images/dataset2nd.jpeg",
        "assets/images/dataset3rd.jpeg",
        "assets/images/dataset4th.jpeg"
      ].obs;
// assets\images\dataset3rd.jpeg
  // assets\images\dataset2nd.jpeg
  RxList<String> get headerText => [
        "What is a Dataset",
        "Upload your Dataset",
        "We have received your Dataset . Thankyou",
        "Feedback "
      ].obs;

  RxList<String> get subText =>
      [first, second, thired, "Submitted Successfully"].obs;

  void nextPage() {
    if (currentPage < 2) {
      currentPage++;
    }
  }

  void lastPage() {
    if (currentPage > 0) currentPage--;
  }
}
