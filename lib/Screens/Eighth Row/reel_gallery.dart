import 'package:flutter/material.dart';

class ReelsGallery extends StatefulWidget {
  const ReelsGallery({Key? key}) : super(key: key);

  @override
  State<ReelsGallery> createState() => _ReelsGalleryState();
}

class _ReelsGalleryState extends State<ReelsGallery> {
  String dropdownValue = "Recent";
  bool isArchived = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "New Reel",
          style: TextStyle(fontSize: 20),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back when back arrow is pressed
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.flip_camera_ios_outlined),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  underline: Container(
                    color: Colors.transparent,
                  ),
                  items: ["Recent", "Archived"].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                      isArchived = newValue == "Archived";
                    });
                  },
                  value: dropdownValue, // Default value
                ),
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: isArchived
                        ? Icon(
                            Icons.archive_outlined,
                            color: Colors.black,
                          )
                        : Icon(
                            Icons.copy_outlined,
                            color: Colors.black,
                          ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3 containers in each row
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 0.0,
              ),
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Container(
                      constraints: BoxConstraints(
                          minHeight: 229), // Ensure minimum height
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                      // You can replace this with your Card widget
                      child: Center(
                        child: Text(
                          "Card $index",
                          style: TextStyle(),
                        ),
                      ),
                    ),
                    if (isArchived)
                      Positioned(
                        top: 10,
                        right: 20,
                        child: SizedBox(
                          child: Container(
                            width: 19,
                            height: 16,
                            color: Colors.grey[300],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "18",
                                  style: TextStyle(
                                      fontSize: 5, color: Colors.black),
                                ),
                                Text(
                                  "Feb",
                                  style: TextStyle(
                                      fontSize: 5, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
