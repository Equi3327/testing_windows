import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          child: Icon(Icons.person),
          radius: 34.0,
        ),
        Column(
          children: [
            Text(
              "Aayush Shah",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    height: 2,
                  ),
            ),
            Text(
              "Head of PPC",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    // height: 5,
                  ),
            ),
            Text(
              "Mumbai, India",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    // height: 5,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
