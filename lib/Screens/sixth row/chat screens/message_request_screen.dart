// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class MessageRequest extends StatelessWidget {
//   const MessageRequest({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Custom Design
//           Positioned(
//             left: 0,
//             right: 0,
//             top: 0,
//             child: Container(
//               height: 200,
//               decoration: BoxDecoration(
//                 color: Colors.blue, // Your custom design color
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Manikumar Pokala",
//                     style: TextStyle(
//                       fontSize: 24,
//                       height: 1.4,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Container(
//                     height: 102,
//                     width: 102,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.grey, // Placeholder color
//                     ),
//                     // Custom Avatar goes here
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     "Mani Kumar",
//                     style: TextStyle(
//                       fontSize: 24,
//                       height: 1.4,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "Tepnoty Mani Kumar",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "506 Followers",
//                         style: TextStyle(
//                           fontSize: 12,
//                         ),
//                       ),
//                       SizedBox(width: 8),
//                       Text(
//                         "8 Posts",
//                         style: TextStyle(
//                           fontSize: 12,
//                         ),
//                       ),
//                       SizedBox(width: 8),
//                       Text(
//                         "Follow you",
//                         style: TextStyle(
//                           fontSize: 12,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Circular Avatar with Stack and Container
//           Positioned(
//             left: 20,
//             top: 20,
//             child: Container(
//               height: 38,
//               width: 38,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.grey, // Placeholder color
//               ),
//               // Custom Avatar goes here
//             ),
//           ),
//           // Red Circular Dot
//           Positioned(
//             right: 20,
//             bottom: 20,
//             child: Container(
//               height: 10,
//               width: 10,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.red, // Your custom dot color
//               ),
//             ),
//           ),
//           // Row with Container containing text widget
//           Positioned(
//             left: 0,
//             right: 0,
//             bottom: 200,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 20,
//                   child: Stack(
//                     children: [
//                       Positioned(
//                         top: 0,
//                         left: 0,
//                         right: 0,
//                         bottom: 0,
//                         child: Container(
//                           height: 20,
//                           color: Colors.grey, // Placeholder color
//                         ),
//                       ),
//                       Center(
//                         child: Text(
//                           "Hello bro",
//                           style: TextStyle(fontSize: 12),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
