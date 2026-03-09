import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
        'Reservation',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
               image: DecorationImage(
                image: AssetImage("assets/images/banner.jpg"),
                fit: BoxFit.cover,
                ),
              ),
            ),
            //  SizedBox(height:5),
            Container(
              height: 90,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 22, 188, 210),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Fault Information:'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {  
                      }, child: Text("Choose Device model"),),
                      TextButton(onPressed: () {
                        
                      }, child: Text('price')),
                    ],
                  )
                ],
              ),
            ),
          //  SizedBox(height: 5),
           Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(10),
            ),
            height: 100, 
            width: double.infinity,
            child: Text('Please describe the device problem in detail!'),
            ),
            Container(
              height: 90,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Service store:'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {  
                      }, child: Text("Tap to select service store"),),
                      Icon(Icons.chevron_right_sharp)
                    ],
                  )
          ],
        ),
      ),
      Container(
              height: 90,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Reservation Time:'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {  
                      }, child: Text("Tap to select Arrival time:"),),
                      Icon(Icons.chevron_right_sharp)
                    ],
                  )
          ],
        ),
      ),
      Container(
              height: 90,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                Text("Please input your name:")
                ],
              ),
      )
    ],
        ),
      ),
    );
    
  }
}