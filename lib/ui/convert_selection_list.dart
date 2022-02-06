import 'package:flutter/material.dart';

class ConversionList extends StatefulWidget{
  const ConversionList({Key? key}) : super(key: key);

  @override
  State<ConversionList> createState() => _ConversionListState();
}

class _ConversionListState extends State<ConversionList>{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        child: Column(
          children: [
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
                    Column(
                      children: [
                        Text(
                          '\$24,150.17',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'Coco Sharp',
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '2.73 BTC',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'Coco Sharp',
                            fontSize: 10,
                            fontWeight: FontWeight.w200,
                            color: Theme.of(context)
                                .primaryColor
                                .withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: size.width,
              color: Theme.of(context).backgroundColor,
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
                        color: Theme.of(context).brightness.toString() == 'Brightness.light' ? Color(0XFFF9FAFF) : Color(0XFF222222),
                      ),
                      child: Image.asset(
                        'assets/images/ethereum_icon.png',
                        scale: 2,
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'ETH',
                          style: TextStyle(
                            fontFamily: 'Coco Sharp',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF54575B),
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
                      'assets/images/ethereum_graph.png',
                      scale: 2,
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        Text(
                          '\$24,150.17',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'Coco Sharp',
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '2.73 BTC',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'Coco Sharp',
                            fontSize: 10,
                            fontWeight: FontWeight.w200,
                            color: Theme.of(context)
                                .primaryColor
                                .withOpacity(0.4),
                          ),
                        ),
                      ],
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
                        'assets/images/xrp_icon.png',
                        scale: 2,
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'XRP',
                          style: TextStyle(
                            fontFamily: 'Coco Sharp',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF1276A7),
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
                      'assets/images/xrp_graph.png',
                      scale: 2,
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        Text(
                          '\$24,150.17',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'Coco Sharp',
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '2.73 BTC',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'Coco Sharp',
                            fontSize: 10,
                            fontWeight: FontWeight.w200,
                            color: Theme.of(context)
                                .primaryColor
                                .withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: size.width,
              color: Theme.of(context).backgroundColor,
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
                        color: Theme.of(context).brightness.toString() == 'Brightness.light' ? Color(0XFFF9FAFF) : Color(0XFF222222),
                      ),
                      child: Image.asset(
                        'assets/images/litcoin_icon.png',
                        scale: 2,
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'lTC',
                          style: TextStyle(
                            fontFamily: 'Coco Sharp',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF54575B),
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
                      'assets/images/litcoin_graph.png',
                      scale: 2,
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        Text(
                          '\$24,150.17',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'Coco Sharp',
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '2.73 BTC',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'Coco Sharp',
                            fontSize: 10,
                            fontWeight: FontWeight.w200,
                            color: Theme.of(context)
                                .primaryColor
                                .withOpacity(0.4),
                          ),
                        ),
                      ],
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