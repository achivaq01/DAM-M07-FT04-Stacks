import 'package:cupertino_base/layout_part_right.dart';
import 'package:cupertino_base/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'app_data.dart';
import 'layout_part_right.dart';

class LayoutPartCentral extends StatefulWidget {
  const LayoutPartCentral({Key? key}) : super(key: key);

  @override
  LayoutPartCentralState createState() => LayoutPartCentralState();
}

class LayoutPartCentralState extends State<LayoutPartCentral> {
  @override
  Widget build(BuildContext context) {
    AppData appData = Provider.of<AppData>(context);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              onPressed: appData.toggleSidebarLeft,
              child: Icon(
                CupertinoIcons.sidebar_left,
                color: appData.isSidebarLeftVisible
                    ? CupertinoColors.activeBlue
                    : CupertinoColors.black,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ),
          ],
        ),
        middle: Text(
          "hola",
          style: TextStyle(color: appData.textColor),
        ),
        trailing: CupertinoButton(
          padding: const EdgeInsets.all(0.0),
          onPressed: appData.toggleSidebarRight,
          child: Icon(
            CupertinoIcons.settings,
            color: appData.isSiderbarRightVisible
                ? CupertinoColors.activeBlue
                : CupertinoColors.black,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Central"),
          ],
        ),
      ),
    );
  }
}
