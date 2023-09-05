import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/const/const.dart';
import 'package:responsive_dashboard_ui/utils/mt_tile.dart';

import '../utils/my_box.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBAckground,
      appBar: myAppBar,
      body: Row(
        children: [
          //open drawer
          myDrawer,
          // rest of body
          Expanded(
            flex: 2,
            child: Column(
              children: [
                //4 box on the top
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return const MyBox();
                        }),
                  ),
                ),
                //tile below it

                Expanded(
                  child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return MyTile();
                      }),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.red,
          ))
        ],
      ),
    );
  }
}
