import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';


class WidgetOverBoard extends StatefulWidget {
  WidgetOverBoard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _WidgetOverBoardState createState() => _WidgetOverBoardState();
}

class _WidgetOverBoardState extends State<WidgetOverBoard> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: OverBoard(
        allowScroll: true,
        pages: pages,
        showBullets: true,
        inactiveBulletColor: Colors.blue,
        skipCallback: () {
          ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
            content: Text("Skip clicked"),
          ));

        },
        finishCallback: () {
          ScaffoldMessenger.of(context).showSnackBar(  const SnackBar(
            content: Text("Finish clicked"),
          ));
        },
      ),
    );
  }

  final pages = [
    PageModel(
        color: const Color(0xFF0097A7),
        imageAssetPath: 'assets/images/image1.png',
        title: 'Screen 1',
        body: 'Share your ideas with the team',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF536DFE),
        imageAssetPath: 'assets/images/image2.png',
        title: 'Screen 2',
        body: 'See the increase in productivity & output',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF9B90BC),
        imageAssetPath: 'assets/images/image3.png',
        title: 'Screen 3',
        body: 'Connect with the people from different places',
        doAnimateImage: true),
    PageModel.withChild(
        child: Padding(
          padding: EdgeInsets.only(bottom: 25.0),
          child: Image.asset('assets/images/image1.png', width: 410.0, height: double.infinity,),
        ),
        color: const Color(0xFF5886d6),
        doAnimateChild: true)
  ];
}