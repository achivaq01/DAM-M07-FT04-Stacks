import 'package:cupertino_base/layout_part_central.dart';
import 'package:cupertino_base/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'app_data.dart';

class LayoutPartRight extends StatefulWidget {
  const LayoutPartRight({Key? key}) : super(key: key);

  @override
  LayoutPartRightState createState() => LayoutPartRightState();
}

class LayoutPartRightState extends State<LayoutPartRight> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Expandeix l'ample
      height: double.infinity, // Expandeix l'alt
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.end, // Alinea els elements a l'esquerra
        children: [
          CupertinoButton(
            onPressed: () {
              changeTextColor(Color.fromARGB(255, 255, 0, 0), context);
            },
            child: Text('Change color to red'),
          ),
          CupertinoButton(
            onPressed: () {
              changeTextColor(Color.fromARGB(255, 0, 150, 255), context);
            },
            child: Text('Change color to blue'),
          ),
          CupertinoButton(
            onPressed: () {
              changeTextColor(Color.fromARGB(255, 0, 0, 0), context);
            },
            child: Text('Change color to black'),
          ),
          CupertinoButton(
            onPressed: () {
              changeTextColor(Color.fromARGB(255, 0, 255, 0), context);
            },
            child: Text('Change color to green'),
          ),
        ],
      ),
    );
  }

  void changeTextColor(Color newColor, BuildContext context) {
    var textColorProvider = Provider.of<AppData>(context, listen: false);
    textColorProvider.changeColor(newColor);
  }
}
