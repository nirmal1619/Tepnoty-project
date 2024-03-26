// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:untitled2/custom%20container/bottom_sheet_container.dart';
// import 'package:untitled2/custom%20container/stack_desgine.dart';
// import 'package:untitled2/Screens/sixth%20row/chat%20screens/chat_screen.dart';
// import 'package:untitled2/Screens/sixth%20row/chat%20screens/message_request.dart';

// class ProfileViewScreen extends StatefulWidget {
//   const ProfileViewScreen({Key? key}) : super(key: key);

//   @override
//   State<ProfileViewScreen> createState() => _ExploreScreen3State();
// }

// class _ExploreScreen3State extends State<ProfileViewScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         shadowColor: Colors.transparent,
//         forceMaterialTransparency: true,
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         leading:
//             IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
//         actions: [
//           // IconButton(
//           //   onPressed: () {
//           //     Get.to(() => MessageRequest());
//           //   },
//           //   icon: const Icon(Icons.arrow_forward),
//           // ),
//           IconButton(
//             onPressed: () {
              
//             },
//             icon: const Icon(Icons.add),
//           ),
//           IconButton(
//             onPressed: () {
             
//             },
//             icon: const Icon(Icons.menu),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Stack(
//             children: [
//               const StackDesign2(),
//               Positioned(
//                 top: 120,
//                 left: 0,
//                 right: 0,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 20),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             CircleAvatar(radius: 36),
//                             ProfileTile(),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 50,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20),
//                         child: AboutPart(),
//                       ),
//                       // Column(
//                       //   crossAxisAlignment: CrossAxisAlignment.start,
//                       //   children: [

//                       //   ],
//                       // ),
//                       DefaultTabController(
//                         length: 3,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const TabBar(
//                               indicatorWeight: 2,
//                               indicatorSize: TabBarIndicatorSize.tab,
//                               tabs: [
//                                 Tab(
//                                   icon: Icon(Icons
//                                       .photo_library_outlined), // Icon for Posts tab
//                                 ),
//                                 Tab(
//                                   icon: Icon(Icons
//                                       .video_library), // Icon for Reels tab
//                                 ),
//                                 Tab(
//                                   icon: Icon(
//                                       Icons.bookmark), // Icon for Saved tab
//                                 ),
//                               ],
//                             ),
//                             SingleChildScrollView(
//                               child: SizedBox(
//                                 height:
//                                     Get.height - 340, // Adjust height as needed
//                                 child: TabBarView(
//                                   physics: const PageScrollPhysics(),
//                                   children: [
//                                     buildScrollView(),
//                                     buildScrollView(),
//                                     buildScrollView()
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   SizedBox buildScrollView() {
//     return SizedBox(
//       width: 428.w,
//       height: 926.h,
//       child: GridView.builder(
//         padding: EdgeInsets.only(top: 2, bottom: 65.h),
//         physics: const PageScrollPhysics(),
//         gridDelegate:
//             const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
//         itemCount: 25,
//         itemBuilder: (context, index) => Container(
//           width: 215,
//           height: 154,
//           decoration: BoxDecoration(
//               color: Colors.black,
//               shape: BoxShape.rectangle,
//               // borderRadius: BorderRadius.circular(12),
//               border: Border.all(
//                 width: 2,
//                 color: Colors.grey.shade400,
//               )),
//         ),
//       ),
//     );
//   }
// }

// class ProfileTile extends StatelessWidget {
//   const ProfileTile({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const SizedBox(
//           height: 10,
//         ),
//         const Row(
//           children: [
//             SizedBox(width: 20),
//             Text(
//               "ManiKumar Pokala",
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w700,
//                 fontFamily: "Lexend",
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 5, left: 5),
//               child: Text(
//                 "He/Him",
//                 style: TextStyle(
//                   fontSize: 12,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 5),
//               child: StarEditIcon(),
//             )
//           ],
//         ),
//         Row(
//           children: [
//             const Text("designsby_Mani"),
//             Padding(
//               padding: const EdgeInsets.only(left: 10, top: 0),
//               child: Container(
//                 height: 16,
//                 width: 110,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   border: Border.all(
//                     color: const Color.fromRGBO(217, 217, 217, 1),
//                   ),
//                   gradient: const LinearGradient(colors: [
//                     Color.fromRGBO(139, 74, 228, 1),
//                     Color.fromRGBO(206, 126, 243, 1)
//                   ]),
//                 ),
//                 child: const Center(
//                   child: Text(
//                     "Request To Message",
//                     style: TextStyle(
//                         fontSize: 8,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class AboutPart extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'UI/UX Designer',
//           style: TextStyle(
//             fontSize: 12,
//           ),
//         ),
//         SizedBox(height: 10),
//         Padding(
//           padding: EdgeInsets.only(right: 20),
//           child: Text(
//             'Find joy in every moment, like colors in a painting. Life\'s beauty is in its simple details.',
//             style: TextStyle(
//               fontSize: 12,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class StarEditIcon extends StatelessWidget {
//   const StarEditIcon({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           height: 22,
//           width: 22,
//           decoration: BoxDecoration(
//             border: Border.all(
//               width: 2,
//               color: Colors.white,
//             ),
//             gradient: const LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Color(0xFF8B4AE4),
//                 Color(0xFFCE7EF3),
//               ],
//             ),
//             shape: BoxShape.circle,
//           ),
//         ),
//         const Positioned(
//             top: 5,
//             right: 10,
//             child: Icon(
//               Icons.pentagon_outlined,
//               weight: 15,
//               opticalSize: 15,
//               size: 7,
//               color: Color(0xFFFFE713),
//             )),
//         const Positioned(
//             top: 10,
//             bottom: 15,
//             right: 4,
//             child: Icon(
//               Icons.mode_edit_outline_outlined,
//               size: 7,
//               color: Color(0xFFFFE713),
//             )),
//       ],
//     );
//   }
// }
