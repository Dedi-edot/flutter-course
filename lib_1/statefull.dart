import 'package:flutter/material.dart';

class Statefulll extends StatefulWidget {
  const Statefulll({Key? key}) : super(key: key);

  @override
  _StatefulllState createState() => _StatefulllState();
}

class _StatefulllState extends State<Statefulll> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull Widget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            counter.toString(),
            style: TextStyle(fontSize: 20 + double.parse(counter.toString())),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      if(counter > 1) {
                        counter--;  
                      }
                      
                    });
                    print(counter);
                  },
                  icon: Icon(
                    Icons.remove,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });

                    print(counter);
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
