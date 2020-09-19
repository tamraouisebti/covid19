import 'package:flutter/material.dart';

class Stats extends StatefulWidget {
  final String infected;
  final String deaths;
  final String recovered;
  final String active;
  final String serious;
    Stats( this. infected,this.deaths,this.recovered,this.active,this.serious);
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: <Widget>[
                      Container(
                        
                        width:150,
                        height:80,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.amber, Colors.amber[100]]),
                          borderRadius:BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Text('Affected',style: TextStyle(fontSize: 20,color: Colors.white),),
                            Text(widget.infected,style: TextStyle(fontSize: 25,color: Colors.white,fontStyle: FontStyle.italic),)
                          ]
                        ),
                      ),
                      Container(
                        
                        width:150,
                        height:80,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.red, Colors.red[100]]),
                          borderRadius:BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Text('Death',style: TextStyle(fontSize: 20,color: Colors.white),),
                            Text(widget.deaths,style: TextStyle(fontSize: 25,color: Colors.white,fontStyle: FontStyle.italic),)
                          ]
                        ),
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
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.green, Colors.green[100]]),
                          borderRadius:BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Text('Recovered',style: TextStyle(fontSize: 20,color: Colors.white),),
                            Text(widget.recovered,style: TextStyle(fontSize: 25,color: Colors.white,fontStyle: FontStyle.italic),)
                          ]
                        ),
                      ),
                      Container(
                        
                        width:100,
                        height:80,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.blue[300], Colors.blue[100]]),
                          borderRadius:BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Text('Active',style: TextStyle(fontSize: 20,color: Colors.white),),
                            Text(widget.active,style: TextStyle(fontSize: 25,color: Colors.white,fontStyle: FontStyle.italic),)
                          ]
                        ),
                      ),
                      Container(
                        
                        width:100,
                        height:80,
                        decoration: BoxDecoration(gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.purple, Colors.purple[100]]),
                          borderRadius:BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Text('Serious',style: TextStyle(fontSize: 20,color: Colors.white),),
                            Text(widget.serious,style: TextStyle(fontSize: 25,color: Colors.white,fontStyle: FontStyle.italic),)
                          ]
                        ),
                      )
                    ],
                  )
      ],
      
    );
  }
}