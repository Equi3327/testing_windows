import 'package:flutter/material.dart';
import 'package:testing_windows/dashboard/widgets/rail_sub_destinations.dart';
import 'package:testing_windows/dashboard/widgets/user_info.dart';
import 'package:testing_windows/utilities/navigation_destinations.dart';

import '../widgets/custom_navigation_rail_destination.dart';

// class DashboardView extends StatelessWidget {
//   const DashboardView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: NavRailExample(),
//     );
//   }
// }

class NavRailExample extends StatefulWidget {
  const NavRailExample({super.key});

  @override
  State<NavRailExample> createState() => _NavRailExampleState();
}

class _NavRailExampleState extends State<NavRailExample>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAlignment = -1.0;
  late AnimationController animationController;
  AppNavigationDestination selectedDestination =
      AppNavigationDestination.dashboard;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      reverseDuration: Duration(
        milliseconds: 200,
      ),
      duration: Duration(
        milliseconds: 200,
      ),
      // animationBehavior: AnimationBehavior.preserve
    );
  }

  void toggle() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();

  void slideRight() {
    // debugPrint("slideRight slideRight");
    // if (animationController.isDismissed) {
    animationController.forward();
    // }
  }

  void showSubDestinations(bool show, AppNavigationDestination destination) {
    if (destination != selectedDestination) {
      setState(() {
        selectedDestination = destination;
      });
    }
    if (show) {
      slideRight();
    } else {
      slideLeft();
    }
  }

  void slideLeft() {
    if (animationController.isCompleted) {
      animationController.reverse();
    }
  }

  void keepOpen() {
    if (animationController.isAnimating) {
      animationController.forward();
    } else if (animationController.isDismissed) {
      animationController.forward();
    } else {
      animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: AnimatedBuilder(
                animation: animationController,
                builder: (context, _) {
                  double maxSlide = 3 /
                      16 *
                      MediaQuery.of(context).size.width *
                      animationController.value;
                  Animation<Offset> translateAnimation = Tween<Offset>(
                    begin: Offset(0, 0),
                    end: Offset(maxSlide, 0), // Adjust end offset as needed
                  ).animate(CurvedAnimation(
                    parent: animationController,
                    curve: Curves.easeInOut, // Choose your desired curve
                  ));
                  return Stack(
                    // fit:StackFit.expand,
                    children: [
                      Transform.translate(
                          // transform: Matrix4.identity()..translate(maxSlide),
                          offset: translateAnimation.value,
                          child: RailSubDestinations(
                            subDestinations:
                                selectedDestination.subdestinations(),
                            callback: keepOpen,
                          )),
                      Container(
                        color: Theme.of(context).colorScheme.primary,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'EMPEROR',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    height: 5,
                                  ),
                            ),
                            ...AppNavigationDestination.values
                                .map(
                                  (e) => CustomNavigationRailDestination(
                                    destination: e,
                                    callback: showSubDestinations,
                                  ),
                                )
                                .toList(),
                            Spacer(),
                            UserInfo(),
                            Padding(
                              padding: const EdgeInsets.all(34.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.logout,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                  Text(
                                    "Log Out",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          // height: 0,
                                        ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
          // NavigationRail(
          //   selectedIndex: _selectedIndex,
          //   groupAlignment: groupAlignment,
          //   onDestinationSelected: (int index) {
          //     setState(() {
          //       _selectedIndex = index;
          //     });
          //   },
          //   labelType: labelType,
          //   leading: showLeading
          //       ? FloatingActionButton(
          //           elevation: 0,
          //           onPressed: () {
          //             // Add your onPressed code here!
          //           },
          //           child: const Icon(Icons.add),
          //         )
          //       : const SizedBox(),
          //   trailing: showTrailing
          //       ? IconButton(
          //           onPressed: () {
          //             // Add your onPressed code here!
          //           },
          //           icon: const Icon(Icons.more_horiz_rounded),
          //         )
          //       : const SizedBox(),
          //   destinations: const <NavigationRailDestination>[
          //     NavigationRailDestination(
          //       icon: Icon(Icons.favorite_border),
          //       selectedIcon: Icon(Icons.favorite),
          //       label: Text('First'),
          //     ),
          //     NavigationRailDestination(
          //       icon: Icon(Icons.bookmark_border),
          //       selectedIcon: Icon(Icons.book),
          //       label: Text('Second'),
          //     ),
          //     NavigationRailDestination(
          //       icon: Icon(Icons.star_border),
          //       selectedIcon: Icon(Icons.star),
          //       label: Text('Third'),
          //     ),
          //   ],
          // ),
          VerticalDivider(
            thickness: 1,
            width: 1,
            color: Theme.of(context).colorScheme.primary,
          ),
          // This is the main content.
          Expanded(
            flex: 13,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('selectedIndex: $_selectedIndex'),
                const SizedBox(height: 20),
                Text('Label type: ${labelType.name}'),
                const SizedBox(height: 10),
                OverflowBar(
                  spacing: 10.0,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          labelType = NavigationRailLabelType.none;
                        });
                        toggle();
                      },
                      child: const Text('None'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          labelType = NavigationRailLabelType.selected;
                        });
                      },
                      child: const Text('Selected'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          labelType = NavigationRailLabelType.all;
                        });
                      },
                      child: const Text('All'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text('Group alignment: $groupAlignment'),
                const SizedBox(height: 10),
                OverflowBar(
                  spacing: 10.0,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          groupAlignment = -1.0;
                        });
                      },
                      child: const Text('Top'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          groupAlignment = 0.0;
                        });
                      },
                      child: const Text('Center'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          groupAlignment = 1.0;
                        });
                      },
                      child: const Text('Bottom'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                OverflowBar(
                  spacing: 10.0,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showLeading = !showLeading;
                        });
                      },
                      child:
                          Text(showLeading ? 'Hide Leading' : 'Show Leading'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showTrailing = !showTrailing;
                        });
                      },
                      child: Text(
                          showTrailing ? 'Hide Trailing' : 'Show Trailing'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
