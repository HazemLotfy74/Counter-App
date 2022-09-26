import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagment/provider/counter_provider.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print("//////////////////////////////////////////////");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

             Consumer<CounterProvider>(builder: (context, counter, child) {
                return Text(
                counter.counter.toString(),
                style: TextStyle(fontSize: 45),
                );
      },),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(onPressed: (){
                  Provider.of<CounterProvider>(context,listen: false).decrementCounter();
                },
                  child: Icon(Icons.remove),
                backgroundColor: Colors.redAccent,
                ),
                SizedBox(width: 30,),
                FloatingActionButton(onPressed: (){
                  Provider.of<CounterProvider>(context,listen: false).incrementCounter();
                },
                  child: Icon(Icons.add),
                  backgroundColor: Colors.redAccent,
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}



