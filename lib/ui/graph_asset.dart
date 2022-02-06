import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:varen_soft_application/constants/chart_data.dart';
import 'package:intl/intl.dart';

class Graph extends StatefulWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  bool settingSelected = false;
  CrosshairBehavior _crosshairBehavior = CrosshairBehavior(
    enable: true,
    activationMode: ActivationMode.singleTap,
    lineType: CrosshairLineType.horizontal,
    lineDashArray: [5, 5],
    lineColor: Color(0XFF0CB1A0),
  );

  TooltipBehavior _tooltipBehavior = TooltipBehavior(enable: true);

  List<ChartData> _chartData = [
    ChartData(
      dateTime: DateTime(2003),
      open: 1350.4,
      close: 1496.90,
      low: 1320.9,
      high: 1500.60,
    ),
    ChartData(
      dateTime: DateTime(2004),
      open: 1393.4,
      close: 1476.90,
      low: 1380.9,
      high: 1499.60,
    ),
    ChartData(
      dateTime: DateTime(2004),
      open: 1430.4,
      close: 1496.90,
      low: 1417.9,
      high: 1510.60,
    ),
    ChartData(
      dateTime: DateTime(2005),
      open: 1500.4,
      close: 1586.90,
      low: 1510.9,
      high: 1590.60,
    ),
    ChartData(
      dateTime: DateTime(2006),
      open: 1600.4,
      close: 1620.90,
      low: 1589.9,
      high: 1630.60,
    ),
    ChartData(
      dateTime: DateTime(2007),
      open: 1503.4,
      close: 1576.90,
      low: 1490.9,
      high: 1599.60,
    ),
    ChartData(
      dateTime: DateTime(2008),
      open: 1462.4,
      close: 1490.90,
      low: 1434.9,
      high: 1520.60,
    ),
    ChartData(
      dateTime: DateTime(2009),
      open: 1410.4,
      close: 1490.90,
      low: 1400.9,
      high: 1500.60,
    ),
    ChartData(
      dateTime: DateTime(2010),
      open: 1750.4,
      close: 1796.90,
      low: 1720.9,
      high: 1800.60,
    ),
    ChartData(
      dateTime: DateTime(2011),
      open: 1350.4,
      close: 1496.90,
      low: 1320.9,
      high: 1500.60,
    ),
    ChartData(
      dateTime: DateTime(2012),
      open: 1393.4,
      close: 1476.90,
      low: 1380.9,
      high: 1499.60,
    ),
    ChartData(
      dateTime: DateTime(2013),
      open: 1430.4,
      close: 1496.90,
      low: 1417.9,
      high: 1510.60,
    ),
    ChartData(
      dateTime: DateTime(2014),
      open: 1500.4,
      close: 1586.90,
      low: 1510.9,
      high: 1590.60,
    ),
    ChartData(
      dateTime: DateTime(2015),
      open: 1600.4,
      close: 1620.90,
      low: 1589.9,
      high: 1630.60,
    ),
    ChartData(
      dateTime: DateTime(2016),
      open: 1503.4,
      close: 1576.90,
      low: 1490.9,
      high: 1599.60,
    ),
    ChartData(
      dateTime: DateTime(2017),
      open: 1462.4,
      close: 1490.90,
      low: 1434.9,
      high: 1520.60,
    ),
    ChartData(
      dateTime: DateTime(2018),
      open: 1410.4,
      close: 1490.90,
      low: 1400.9,
      high: 1500.60,
    ),
    ChartData(
      dateTime: DateTime(2019),
      open: 1750.4,
      close: 1796.90,
      low: 1720.9,
      high: 1800.60,
    ),
    ChartData(
      dateTime: DateTime(2020),
      open: 1600.4,
      close: 1620.90,
      low: 1589.9,
      high: 1630.60,
    ),
    ChartData(
      dateTime: DateTime(2021),
      open: 1503.4,
      close: 1576.90,
      low: 1490.9,
      high: 1599.60,
    ),
    ChartData(
      dateTime: DateTime(2022),
      open: 1462.4,
      close: 1490.90,
      low: 1434.9,
      high: 1520.60,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final List<Color> color = <Color>[Color(0XFF0CB1A0).withOpacity(0.1), Color(0XFF0CB1A0).withOpacity(0.2), Color(0XFF0CB1A0)];
    final List<double> stops = <double>[0.0, 0.5, 1.0];
    final LinearGradient gradientColors =
    LinearGradient(colors: color, begin: Alignment.topLeft, end: Alignment.bottomRight, stops: stops);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 31, 34),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '24H',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Coco Sharp',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF0CB1A0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.09),
                  child: Text(
                    '1W',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Coco Sharp',
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0XFFB8B8B8),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.09),
                  child: Text(
                    '1M',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Coco Sharp',
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0XFFB8B8B8),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.09),
                  child: Text(
                    '1Y',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Coco Sharp',
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0XFFB8B8B8),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.09),
                  child: Text(
                    'All',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Coco Sharp',
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0XFFB8B8B8),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      settingSelected = !settingSelected;
                    });
                  },
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.09),
                      child: Theme.of(context).brightness.toString() ==
                              'Brightness.light'
                          ? settingSelected == true
                              ? Image.asset(
                                  'assets/images/selected_setting_icon.png',
                                  scale: 2,
                                )
                              : Image.asset(
                                  'assets/images/light_mode_setting_icon.png',
                                  scale: 2,
                                )
                          : settingSelected == true
                              ? Image.asset(
                                  'assets/images/selected_setting_icon.png',
                                  scale: 2,
                                )
                              : Image.asset(
                                  'assets/images/dark_mode_setting_icon.png',
                                  scale: 2,
                                ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            child: settingSelected == false
                ? SfCartesianChart(
                    crosshairBehavior: _crosshairBehavior,
                    primaryXAxis: DateTimeAxis(
                      dateFormat: DateFormat('E'),
                      majorGridLines: MajorGridLines(width: 0),
                      labelStyle: TextStyle(
                        fontFamily: 'Coco Sharp',
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        color: Color(0XFF666D8F),
                      ),
                    ),
                    primaryYAxis: NumericAxis(
                      opposedPosition: true,
                      numberFormat: NumberFormat.simpleCurrency(
                        decimalDigits: 0,
                      ),
                      minimum: 1300,
                      maximum: 1800,
                      interval: 100,
                    ),
                    series: <ChartSeries>[
                        // Renders CandleSeries
                        CandleSeries<ChartData, DateTime>(
                          enableSolidCandles: true,
                          dataSource: _chartData,
                          xValueMapper: (ChartData sales, _) => sales.dateTime,
                          lowValueMapper: (ChartData sales, _) => sales.low,
                          highValueMapper: (ChartData sales, _) => sales.high,
                          openValueMapper: (ChartData sales, _) => sales.open,
                          closeValueMapper: (ChartData sales, _) => sales.close,
                        )
                      ])
                : SfCartesianChart(
                primaryXAxis: DateTimeAxis(
                  dateFormat: DateFormat('E'),
                  edgeLabelPlacement: EdgeLabelPlacement.shift,
                  majorGridLines: MajorGridLines(width: 0),
                  labelStyle: TextStyle(
                    fontFamily: 'Coco Sharp',
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                    color: Color(0XFF666D8F),
                  ),
                ),
                primaryYAxis: NumericAxis(
                  opposedPosition: true,
                  numberFormat: NumberFormat.simpleCurrency(
                    decimalDigits: 0,
                  ),
                  minimum: 1300,
                  maximum: 1800,
                  interval: 100,
                ),
                    tooltipBehavior: _tooltipBehavior,
                    series: <ChartSeries>[
                        // Renders area chart
                        AreaSeries<ChartData, DateTime>(
                          name: 'Sales',
                            dataSource: _chartData,
                            xValueMapper: (ChartData sales, _) =>
                                sales.dateTime,
                            yValueMapper: (ChartData sales, _) => sales.close,
                            enableTooltip: true,
                            borderColor: Color(0XFF0CB1A0),
                            borderWidth: 2,
                            gradient: gradientColors)
                      ]),
          )
        ],
      ),
    );
  }
}
