import 'package:flutter/material.dart';


class Result extends StatefulWidget {
  final weight, height, multi;
  const Result({Key? key, this.weight,this.height, this.multi}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Result',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
              Text('BMI Result',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold,color: Colors.white,)),
              SizedBox(height: 30.0),
              
              Text(((widget.weight/widget.height/widget.height)*widget.multi).toStringAsFixed(1),style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold,color: Colors.white,)),
              SizedBox(height: 15.0), 
              Text('Normal: 18 to 24',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black,)),
              Text('Underweight: less than 18',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black,)),
              Text('Overweight: More than 24',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black,)),
            ],),
          ),
          
          
          Row(children: [
            Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.pop(context);
                    
                         
                  });
                },
                child: Container(
                  child: Center(
                      child: Text(
                    'Re-Calculate',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  )),
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
        
          ],),
        ],),
    );
  }
}
