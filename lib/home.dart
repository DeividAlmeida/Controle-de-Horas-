import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dateTimeSelected = DateTime.now().toString();

  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Column(
              children:[
                Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Icon(
                    Icons.lock_clock, 
                    size: 200,
                                    
                  ),
                ),
                Text(
                  'Controle de Horas', 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  
                ),
                Text(dateTimeSelected),
                RaisedButton(
                  child: Text('Data'),
                  onPressed: (){
                    showDatePicker(
                      context: context, 
                      initialDate: DateTime.now(), 
                      firstDate: DateTime(2000), 
                      lastDate: DateTime(3000)
                      ).then((date) => {
                        setState((){
                          dateTimeSelected = date.toString() as String;
                        })
                      });
                  }
                )
                
              ],
            ),
          )
      );
  }

  void onPressed() {
  }
}
