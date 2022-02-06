class ChartData {
  ChartData({
    this.dateTime,
    this.year,
    this.sales,
    this.open,
    this.close,
    this.high,
    this.low,
  });

  final DateTime? dateTime;
  final int? year;
  final num? sales;
  final num? open;
  final num? close;
  final num? low;
  final num? high;
}