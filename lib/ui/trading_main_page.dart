import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:varen_soft_application/constants/theme.dart';
import 'package:varen_soft_application/ui/conversion_change_page.dart';
import 'package:varen_soft_application/ui/graph_asset.dart';

class TradingPage extends StatefulWidget {
  const TradingPage({Key? key}) : super(key: key);

  @override
  State<TradingPage> createState() => _TradingPageState();
}

class _TradingPageState extends State<TradingPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.fromLTRB(31, 0, 31, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 49,
                        width: 49,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
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
                          child: Container(
                            height: 41,
                            width: 41,
                            decoration: BoxDecoration(
                              color: Color(0xFF5149F7),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/profile_image.png',
                              scale: 2,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          currentTheme.toggleTheme();
                          print(Theme.of(context).brightness.toString());
                        },
                        child: Container(
                          height: 49,
                          width: 49,
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            border: Border.all(
                              width: 1,
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
                            ),
                          ),
                          child: Theme.of(context).brightness.toString() ==
                                  'Brightness.light'
                              ? Image.asset(
                                  'assets/images/light_mode_menu_icon.png',
                                  scale: 2,
                                )
                              : Image.asset(
                                  'assets/images/dark_mode_menu_icon.png',
                                  scale: 2,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 47),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '123.342,62',
                              style: TextStyle(
                                fontFamily: 'Coco Sharp',
                                fontSize: 38,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'USD',
                              style: TextStyle(
                                fontFamily: 'Coco Sharp',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.3),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '\$120.234,21',
                              style: TextStyle(
                                fontFamily: 'Coco Sharp',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF59C88A),
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              '+8,1%',
                              style: TextStyle(
                                fontFamily: 'Coco Sharp',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 27),
                Container(
                  width: size.width,
                  color: Theme.of(context).brightness.toString() ==
                          'Brightness.light'
                      ? Color(0xFFF9FAFF)
                      : Color(0xFF242424),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 21, 25, 21),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            color: Theme.of(context).backgroundColor,
                          ),
                          child: Image.asset(
                            'assets/images/bitcoin_icon.png',
                            scale: 2,
                          ),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'BTC',
                              style: TextStyle(
                                fontFamily: 'Coco Sharp',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFF7931A),
                              ),
                            ),
                            Text(
                              '-1.32%',
                              style: TextStyle(
                                fontFamily: 'Coco Sharp',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 25),
                        Image.asset(
                          'assets/images/bitcoin_graph.png',
                          scale: 2,
                        ),
                        SizedBox(width: 25),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ConversionPage()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                              border: Border.all(
                                width: 1,
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.1),
                              ),
                              color: Colors.transparent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(16, 7, 16, 7),
                              child: Text(
                                'Change',
                                style: TextStyle(
                                  fontFamily: 'Coco Sharp',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0XFF5149F7),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 26),
                // Container(
                //   height: 100,
                //   width: size.width,
                //   child: Center(
                //     child: Text(
                //       'Graph Coming',
                //       style: TextStyle(
                //         fontFamily: 'Coco Sharp',
                //         fontSize: 38,
                //         fontWeight: FontWeight.w400,
                //         color: Theme.of(context).primaryColor,
                //       ),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Graph(),
                ),
                SizedBox(height: 39),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xFFEB876B).withOpacity(0.1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(56, 17, 56, 17),
                        child: Center(
                          child: Text(
                            'Sell',
                            style: TextStyle(
                              fontFamily: 'Coco Sharp',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFEB876B),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 17),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xFF0CB1A0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(56, 17, 56, 17),
                        child: Center(
                          child: Text(
                            'Buy',
                            style: TextStyle(
                              fontFamily: 'Coco Sharp',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 39),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 31),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Coco Sharp',
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mattis posuere non tellus dictum at. Integer eget sed amet nisi, elit odio.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Coco Sharp',
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            height: 1.9,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 39),
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Market Stats',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Coco Sharp',
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 9),
                Container(
                  width: size.width,
                  color: Theme.of(context).brightness.toString() ==
                      'Brightness.light'
                      ? Color(0xFFF9FAFF)
                      : Color(0xFF242424),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32, 17, 32, 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/presention-chart_icon.png', scale: 2,),
                              SizedBox(width: 12),
                              Text(
                                'Market Stats',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Coco Sharp',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '41,228.00 BTC',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Coco Sharp',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).primaryColor.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  color: Theme.of(context).backgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32, 17, 32, 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/volume_chart_icon.png', scale: 2,),
                              SizedBox(width: 12),
                              Text(
                                'Volume (24 h)',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Coco Sharp',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '\$12,999.00',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Coco Sharp',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).primaryColor.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  color: Theme.of(context).brightness.toString() ==
                      'Brightness.light'
                      ? Color(0xFFF9FAFF)
                      : Color(0xFF242424),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32, 17, 32, 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/available_supply_icon.png', scale: 2,),
                              SizedBox(width: 12),
                              Text(
                                'Available Supply',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Coco Sharp',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '9,771.64',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Coco Sharp',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).primaryColor.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 39),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
