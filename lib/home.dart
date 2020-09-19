import 'dart:convert';
import 'package:covid19/empty_satats.dart';
import 'package:shimmer/shimmer.dart';

import 'package:covid19/country_list.dart';
import 'package:covid19/stats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:covid19/region.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:async/async.dart';


class Home extends StatefulWidget {
  
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
 
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
         
        body: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: MediaQuery.of(context).size.width,
          
          decoration: BoxDecoration(
            gradient: LinearGradient(
                
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.red[100]]),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)
              )
              ),
          child: Stack(
  children: <Widget>[
    Positioned(
      right: 0,
      top: 10,
      child: SvgPicture.asset("images/medical.svg",width: 300,)),
    Positioned(
      left: 10,
      top: 10,
      child: Country_list()
      )
  ],
)
          
      ),
      Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  
                    
                    SizedBox(
                      height: 20.0,
                    ),
                    
                    FutureBuilder(
                      future: http.get('https://api.apify.com/v2/key-value-stores/pp4Wo2slUJ78ZnaAi/records/LATEST?disableRedirect=true'),
                      builder: (context,snapshot){
                        
                        if (snapshot.hasData)
                        {
                        var parsedJson = json.decode(snapshot.data.body);
                        var regObjsJson = jsonDecode(snapshot.data.body)['infectedByRegion'] as List;
                        List<Region> regObjs = regObjsJson.map((regObjs) => Region.fromJson(regObjs)).toList();

                        print(regObjs);

                        var seriespiedata=List<ColumnSeries<Region,String>>();
                        seriespiedata.add(ColumnSeries(
                          dataSource:regObjs,
                          xValueMapper:(Region region,_)=>region.region,
                          
                          yValueMapper: (Region region,_)=>region.value,
                          dataLabelSettings: DataLabelSettings(
                            isVisible: true,
                            alignment: ChartAlignment.far
                            ),
                          dataLabelMapper: (Region region,_)=>region.region,
                          
                          
                          ));






                        print(parsedJson['infectedByRegion'][0]['value']);
                        return Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 400,
                              child: SfCartesianChart(
                                primaryXAxis: CategoryAxis(),
                                zoomPanBehavior: ZoomPanBehavior(
                                  // Enables pinch zooming
                                  enableDoubleTapZooming: true
                                ),
                                title: ChartTitle(text: 'Affected By Willaya'),
                                tooltipBehavior: TooltipBehavior(enable: true),
                                series:seriespiedata,
                              ),
                              /*child: charts.BarChart(
                                
                                seriespiedata,
                                
                                animate: true,
                                defaultInteractions: true,
                                
                                animationDuration: Duration(seconds:2),
                                domainAxis: new charts.OrdinalAxisSpec(
            // Make sure that we draw the domain axis line.
            showAxisLine: true,
            // But don't draw anything else.
            renderSpec: new charts.NoneRenderSpec()),
            
              selectionModels: [
          charts.SelectionModelConfig(
            changedListener: (charts.SelectionModel model) {
              }
          )
      ],

                                behaviors: [
                                  
                                  new charts.ChartTitle('Affected by Willaya',
                                  behaviorPosition: charts.BehaviorPosition.bottom,
                                  titleOutsideJustification:charts.OutsideJustification.middleDrawArea),
                                  charts.LinePointHighlighter(
                                    
                                    showHorizontalFollowLine:
                charts.LinePointHighlighterFollowLineType.values[0],
                
            showVerticalFollowLine:
                charts.LinePointHighlighterFollowLineType.none
                                  ),
                                  
                                ],
                                )*/
                                ),
                                Stats(
                          parsedJson['infected'].toString(),
                          parsedJson['deceased'].toString(),
                          parsedJson['recovered'].toString(),
                          (parsedJson['infected']-parsedJson['deceased']-parsedJson['recovered']).toString(),
                          parsedJson['hospitalized'].toString()),
                          ],
                        );
                        /**/
                        }
                        else{
                          return Shimmer.fromColors(
                            baseColor: Colors.grey[300],
                            highlightColor: Colors.white,
                            child: Empty_Stats(),
                          );
                        }
                        
                      }),
                      
  
  
  
                  ],
                  ),
                  ),
                  ],
                  ),
        ),
                );
  }
}