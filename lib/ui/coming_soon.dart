import 'package:flutter/material.dart';

class ComingSoon extends StatefulWidget{
  const ComingSoon({Key? key}) : super(key: key);


  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Page Coming',
            style: TextStyle(
              fontFamily: 'Coco Sharp',
              fontSize: 38,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }

}