import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GalleryScreen extends StatefulWidget {
  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  // Define a list of options
  final List<String> options = ["Gallery", "Photo", "Video", "Reel"];

  // Define a variable to keep track of the selected option
  final selectedOption = "".obs;

  // Define a variable to keep track of the selected index
  int selectedIndex = 0;

  // Define a ScrollController
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // Set the initial selected option
    selectedOption.value = options.first;
    // Calculate the initial scroll offset
    _scrollToSelectedIndex(selectedIndex);
  }

  // Method to scroll ListView to the selected index
  void _scrollToSelectedIndex(int index) {
    double screenWidth = MediaQuery.of(context).size.width;
    double offset = screenWidth * 0.25 * index - screenWidth * 0.5;
    if (offset < 0) offset = 0;
    _scrollController.jumpTo(offset);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.close),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("Next"),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Positioned(
            bottom: 10,
            child: Expanded(
              child: ListView.builder(
                physics: PageScrollPhysics(),
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: options.length,
                itemBuilder: (context, index) {
                  final option = options[index];
                  return Obx(
                    () => GestureDetector(
                      onTap: () {
                        // Update the selected option
                        selectedOption.value = option;
                        setState(() {
                          selectedIndex = index;
                        });
                        // Scroll to the selected index
                        _scrollToSelectedIndex(index);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: Get.width * 0.25,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                              child: TextButton(
                                onPressed: () {
                                  // Update the selected option
                                  selectedOption.value = option;
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                  // Scroll to the selected index
                                  _scrollToSelectedIndex(index);
                                },
                                style: ButtonStyle(
                                  // Disable splash effect
                                  overlayColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) => Colors.transparent),
                                ),
                                child: Text(
                                  option,
                                  style: TextStyle(
                                    color: option == selectedOption.value
                                        ? Colors.white
                                        : Color(0xFF969696),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            // Add a Container to display the indicator bar
                            Container(
                              height: 2,
                              width: option == selectedOption.value ? 60 : 0,
                              color: Colors.grey, // Adjust color as needed
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
