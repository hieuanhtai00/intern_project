import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:project_intern/presenter/widgets/drawer/dialog.dart';

class HomeIcon extends StatefulWidget {
  const HomeIcon({Key? key}) : super(key: key);

  @override
  State<HomeIcon> createState() => _HomeIconState();
}

class _HomeIconState extends State<HomeIcon> {
  late Color color;
  @override
  void initState() {
    color = Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (color == Colors.black)
          color = Colors.pink;
        else
          color = Colors.black;
        setState(() {});
      },
      child: Icon(
        Icons.home,
        color: color,
      ),
    );
  }
}

class HeartIcon extends StatefulWidget {
  const HeartIcon({Key? key}) : super(key: key);

  @override
  State<HeartIcon> createState() => _HeartIconState();
}

class _HeartIconState extends State<HeartIcon> {
  late Color color;
  @override
  void initState() {
    color = Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (color == Colors.black)
          color = Colors.pink;
        else
          color = Colors.black;
        setState(() {});
      },
      child: Icon(
        Icons.favorite,
        color: color,
      ),
    );
  }
}

class AboutIcon extends StatefulWidget {
  const AboutIcon({Key? key}) : super(key: key);

  @override
  State<AboutIcon> createState() => _AboutIconState();
}

class _AboutIconState extends State<AboutIcon> {
  late Color color;
  @override
  void initState() {
    color = Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (color == Colors.black)
          color = Colors.pink;
        else
          color = Colors.black;
        setState(() {});
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DialogForApp()));
      },
      child: Icon(
        Icons.adb_outlined,
        color: color,
      ),
    );
  }
}
