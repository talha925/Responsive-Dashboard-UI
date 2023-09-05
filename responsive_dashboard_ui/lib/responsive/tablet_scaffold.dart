import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/utils/mt_tile.dart';
import 'package:responsive_dashboard_ui/utils/my_box.dart';

import '../const/const.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBAckground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          //4 box on the top
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
    );
  }
}
