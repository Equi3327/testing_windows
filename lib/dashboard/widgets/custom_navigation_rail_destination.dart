import 'package:flutter/material.dart';
import 'package:testing_windows/utilities/navigation_destinations.dart';

class CustomNavigationRailDestination extends StatefulWidget {
  const CustomNavigationRailDestination({
    super.key,
    required this.destination,
    required this.callback,
  });
  final AppNavigationDestination destination;
  final Function callback;

  @override
  State<CustomNavigationRailDestination> createState() =>
      _CustomNavigationRailDestinationState();
}

class _CustomNavigationRailDestinationState
    extends State<CustomNavigationRailDestination> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5.0,
        left: 21.0,
        right: 8.0,
        // bottom: 13.0,
      ),
      child: InkWell(
        onHover: (value) {
          debugPrint("Hovering on ${widget.destination.title()}");
          // widget.callback();
          if (value) {
            widget.callback();
          }
        },
        onTap: () {
          widget.callback();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                10.0,
              ),
            ),
            // color:Colors.red,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  widget.destination.icon(),
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  widget.destination.title(),
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        // height: 0,
                      ),
                ),
              ),
              widget.destination != AppNavigationDestination.dashboard
                  ? Expanded(
                      child: Icon(
                        Icons.arrow_right,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      flex: 1,
                    )
                  : const Expanded(
                      child: SizedBox(
                      width: 10,
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
