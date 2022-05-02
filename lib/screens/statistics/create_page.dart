import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class StatsPage extends StatelessWidget {
  //const HomePage({ Key? key }) : super(key: key);
  Map<String, double> dataMap = {
    "Food & Drinks": 4,
    "Travel": 3,
    "Shopping": 2,
    "Gifts": 3,
    "Others": 2,
  };

  get floatingActionButton => null;

  get floatingActionButtonLocation => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2473),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: //we rae saying htere are widgets inside this row
            <Widget>[
          Text(
            'Track Daily Expenses',
            style: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Container(
            //child:
            child: PieChart(
              dataMap: dataMap,
              chartRadius: MediaQuery.of(context).size.width / 3,
              chartType: ChartType.ring,
              ringStrokeWidth: 32,
              centerText: "spending",
              legendOptions: const LegendOptions(
                legendShape: BoxShape.circle,
                legendPosition: LegendPosition.bottom,
                showLegends: true,
                showLegendsInRow: true,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              chartValuesOptions: ChartValuesOptions(
                  showChartValuesInPercentage: true,
                  showChartValueBackground: true,
                  showChartValuesOutside: true,
                  showChartValues: true,
                  chartValueStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          /*Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              
              Container(
                width: 110.0,
                height: 130.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: const Color(0xff87ceeb),
                ),
                child: Center(
                  child: Text(
                    'your most \n\ spent was \n\on movies',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.black,
                      //height: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),'*/
        ],
      ),
    );
  }
}
