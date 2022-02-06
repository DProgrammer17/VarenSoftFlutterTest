import 'package:flutter/material.dart';
import 'package:varen_soft_application/ui/bottom_nav_bar.dart';
import 'package:varen_soft_application/ui/convert_selection_list.dart';
import 'package:varen_soft_application/ui/trading_main_page.dart';

class ConversionPage extends StatefulWidget {
  const ConversionPage({Key? key}) : super(key: key);

  @override
  State<ConversionPage> createState() => _ConversionPageState();
}

class _ConversionPageState extends State<ConversionPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomSheet: Stack(
        children: <Widget>[
          Container(
            child: Column(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(28, 40, 28, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => BottomNavBar()));
                        },
                        child: Container(
                          height: 49,
                          width: 49,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            border: Border.all(
                              width: 1,
                              color:
                                  Theme.of(context).primaryColor.withOpacity(0.1),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_sharp,
                              size: 28,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Exchange',
                        style: TextStyle(
                          fontFamily: 'Josefin',
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.79,
              width: size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  //  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(33, 40, 33, 26),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Convert to',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Coco Sharp',
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => BottomNavBar()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              border: Border.all(
                                width: 1,
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.1),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                              child: Center(
                                child: Icon(
                                  Icons.clear,
                                  size: 14,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.63,
                    child: ListView.builder(
                      itemBuilder: (BuildContext, index) => ConversionList(),
                      itemCount: 2,
                      scrollDirection: Axis.vertical,
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
