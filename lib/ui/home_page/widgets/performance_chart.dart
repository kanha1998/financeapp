
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../models/Chart_data_model.dart';

class PerformanceChart extends StatelessWidget {
  const PerformanceChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Row(
          children: [
            const Text("PERFORMANCE CHART",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
            const  Spacer(),
            TextButton(
              child:Container(
                decoration:const  BoxDecoration(
                    color: Color(0xffB4B9D1),
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                  child: Text("MORE",style: TextStyle(color: Colors.white),),
                ),
              ),
              onPressed: (){

              },

            )
          ],
        ),
        SizedBox(height: 10,),
        SfCartesianChart(
            primaryXAxis:  CategoryAxis(

            ),
            series: <ChartSeries>[

              // Renders spline chart
              SplineSeries<ChartData,String >(
                  splineType: SplineType.monotonic,
                  dataSource: chartDataList,
                  xValueMapper: (ChartData data, _) => data.month,
                  yValueMapper: (ChartData data, _) => data.value,
                  cardinalSplineTension: 0.5
              )

            ]
        ),
      ],
    );
  }
}
