//enum MonthList {'JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUNE', 'JULY', 'AUG', 'SEP';, 'OCT', 'NOV', 'DEC'};
class ChartData {
  ChartData(this.month,this.value);

  final int value;

 final  String month;
}

final List<ChartData> chartDataList = [
  ChartData("JAN",250),
   ChartData( "FEB",350),
      ChartData("MAR",380),
  ChartData("APR",280),
  ChartData("MAY",330),
  ChartData("JUN",270),
];
