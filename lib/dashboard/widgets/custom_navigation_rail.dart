// import 'package:flutter/material.dart';

// class CustomNavigationRail extends StatefulWidget {
//   const CustomNavigationRail({super.key});

//   @override
//   State<CustomNavigationRail> createState() => _CustomNavigationRailState();
// }

// class _CustomNavigationRailState extends State<CustomNavigationRail> {
//   @override
//   Widget build(BuildContext context) {
//     return  NavigationRail(
//             selectedIndex: _selectedIndex,
//             groupAlignment: groupAlignment,
//             onDestinationSelected: (int index) {
//               setState(() {
//                 _selectedIndex = index;
//               });
//             },
//             labelType: labelType,
//             leading: showLeading
//                 ? FloatingActionButton(
//                     elevation: 0,
//                     onPressed: () {
//                       // Add your onPressed code here!
//                     },
//                     child: const Icon(Icons.add),
//                   )
//                 : const SizedBox(),
//             trailing: showTrailing
//                 ? IconButton(
//                     onPressed: () {
//                       // Add your onPressed code here!
//                     },
//                     icon: const Icon(Icons.more_horiz_rounded),
//                   )
//                 : const SizedBox(),
//             destinations: const <NavigationRailDestination>[
//               NavigationRailDestination(
//                 icon: Icon(Icons.favorite_border),
//                 selectedIcon: Icon(Icons.favorite),
//                 label: Text('First'),
//               ),
//               NavigationRailDestination(
//                 icon: Icon(Icons.bookmark_border),
//                 selectedIcon: Icon(Icons.book),
//                 label: Text('Second'),
//               ),
//               NavigationRailDestination(
//                 icon: Icon(Icons.star_border),
//                 selectedIcon: Icon(Icons.star),
//                 label: Text('Third'),
//               ),
//             ],
//           );
//   }
// }