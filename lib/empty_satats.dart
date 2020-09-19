import 'package:flutter/material.dart';

class Empty_Stats extends StatefulWidget {
  @override
  _Empty_StatsState createState() => _Empty_StatsState();
}

class _Empty_StatsState extends State<Empty_Stats> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                
                        decoration: BoxDecoration(color:Colors.amber,borderRadius:BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(8.0),
                        
                      ),
                      Container(
                        
                        width:150,
                        height:80,
                        decoration: BoxDecoration(color:Colors.amber,borderRadius:BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(8.0),
                        
                      ),
                      Container(
                        
                        width:150,
                        height:80,
                        decoration: BoxDecoration(color:Colors.red,borderRadius:BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(8.0),
                        
                      ),
                    ],
                  ),
                  SizedBox(height:10),
                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: <Widget>[
                      Container(
                        
                        width:110,
                        height:80,
                        decoration: BoxDecoration(color:Colors.green,borderRadius:BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(8.0),
                        
                      ),
                      Container(
                        
                        width:110,
                        height:80,
                        decoration: BoxDecoration(color:Colors.blue[300],borderRadius:BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(8.0),
                        
                      ),
                      Container(
                        
                        width:110,
                        height:80,
                        decoration: BoxDecoration(color:Colors.purple,borderRadius:BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(8.0),
                        
                      )
                    ],
                  )
      ],
      
    );
  }
}