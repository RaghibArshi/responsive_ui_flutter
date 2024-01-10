import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/Utils/constantUI.dart';

import '../Utils/WidgetBoxes.dart';
import '../Utils/WidgetList.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commonBackground,
      appBar: commonAppbar('Tablet View'),
      drawer: commonDrawer,
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return WidgetBoxes();
                        }),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return WidgetList();
                      }),
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.orange,
                        child: Center(
                          child: Text('Extra Data'),
                        ),
                      )
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
