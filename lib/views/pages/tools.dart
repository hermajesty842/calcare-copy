import 'package:flutter/material.dart';

List<String> FAQS = [
  "How to check Repairs status?",
  "How to maka a reservation for in-store repairs?",
  "How to check the price of spare parts?",
  "How to check he warranty status of my phone?",
];

class Tools extends StatelessWidget {
  const Tools({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Text("Calcare"),
        centerTitle: true,
        ),
      body: Column(
        children: [
          Container(
            // padding: EdgeInsets.all(30.0),
            height: 150,
           margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage("assets/images/quote.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8.0),
              shape: BoxShape.rectangle,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 150,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage("assets/images/puppy.jpg"),
              ),
              borderRadius: BorderRadius.circular(8.0),
              shape: BoxShape.rectangle,
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.0),
            ),
         child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...FAQS.map((faqsString){
            return Text(faqsString);
          }).toList(),
          ]
      ),
          ),
        ],
      ),
    );
  }
}
                                                                                                        
             