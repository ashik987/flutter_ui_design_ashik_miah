import 'package:flutter_ui_design_ashik_miah/Task.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        centerTitle: true,
      ),
      body: Center(
          child: Container(child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome To"),
              Text('Plan IT',style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold), )
            ],
          ),

            height: 100,
            width: 350,

          )
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Your personal task management and planning solution',textAlign: TextAlign.center,style: TextStyle(fontSize: 18, ),
          ),
          Container(
            width: 150,
            height: 60,
            margin: EdgeInsets.only(bottom: 40,top: 20),

            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Task()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black87),
                foregroundColor: MaterialStateProperty.all(Colors.white),

              ),
              child: Text("Let's Get Started"),
            ),
          ),

        ],
      ),

    );
  }
}