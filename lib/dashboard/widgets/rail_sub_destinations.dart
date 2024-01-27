import 'package:flutter/material.dart';

class RailSubDestinations extends StatelessWidget {
  const RailSubDestinations({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onHover: (value) {
      //   // debugPrint("Hovering on ${widget.destination.title()}");
      // },
      onTap: () {
    
      },
      child: Container(
        padding: const EdgeInsets.all(21.0,),
        height: MediaQuery.of(context).size.height,
        // width: 3/16 * MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.only(topRight:Radius.circular(10.0,),bottomRight:Radius.circular(10.0,),),
          color:Theme.of(context).colorScheme.primary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Expanded(
            //   flex: 1,
            //   child: Icon(
            //     Icons.add,
            //     color: Theme.of(context).colorScheme.primary,
            //   ),
            // ),
            Text(
              "Customer / Supplier",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    height: 4,
                  ),
            ),
            Text(
              "Raw Material",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    // height: 0,
                    height: 4,
                  ),
            ),
            Text(
              "Design Master",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    // height: 0,
                    height: 4,
                  ),
            ),
            Text(
              "Rate Master",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    // height: 0,
                    height: 4,
                  ),
            ),
            Text(
              "Sub Master",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    // height: 0,
                    height: 4,
                  ),
            ),
            Text(
              "Loss Recovery",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    // height: 0,
                    height: 4,
                  ),
            ),
           
          ],
        ),
      ),
    );
  }
}