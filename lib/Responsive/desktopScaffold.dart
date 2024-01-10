import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/Utils/constantUI.dart';

import '../Utils/WidgetBoxes.dart';
import '../Utils/WidgetList.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commonBackground,
      appBar: commonAppbar('Desktop View'),
      body: Row(
        children: [
          commonDrawer,
          Expanded(
            flex: 2,
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
