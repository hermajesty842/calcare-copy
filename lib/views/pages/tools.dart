import 'package:flutter/material.dart';

List<Map<String, dynamic>> gridItems = [
  {'title': 'process',
   'icon': Icons.description, 
   'Color': Colors.orange,
   },
  {'title': 'warranty', 
  'icon': Icons.verified, 
  'color': Colors.teal},
  {
    'title': 'Online Reservation',
    'icon': Icons.event_available,
    'color': Colors.lightBlue,
  },
  {
    'title': 'Phone Detection',
    'icon': Icons.manage_search,
    'color': Colors.orangeAccent,
  },
  {
    'title': 'Review Orders',
    'icon': Icons.assignment,
    'color': Colors.teal,
  },
  {
    'title': 'Protection Package',
    'icon': Icons.add_moderator,
    'color': Colors.teal,
  },
  {
    'title': 'Price',
    'icon': Icons.monetization_on,
    'color': Colors.limeAccent,
  },
  {
    'title': 'Online Reservation',
    'icon': Icons.grid_view,
    'color': Colors.blue,
  },
];

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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "search",
                  prefixIcon:Icon(Icons.search_rounded,color: Colors.grey),
                  suffixIcon: Icon(Icons.qr_code_scanner_rounded,color: Colors.black,),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.transparent),
                  )
                ),
              ),
            ),
            Container(
              // padding: EdgeInsets.all(30.0),
              height: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 194, 243),
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
              height: 210,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 194, 243),
                borderRadius: BorderRadius.circular(8.0),
                shape: BoxShape.rectangle,
              ),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                ),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(
                          gridItems[index]['icon'],
                          color: gridItems[index]['color'],
                          ),
                      ),
                      SizedBox(height: 5),
                      Text(
                      gridItems[index]['title'],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                  'FAQ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Row(
                    children: [
                      Text("more"),
                      Icon(Icons.chevron_right),
                    ],
                  )
                ],
              ),
            ),
        
            Container(
              height: 150,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...FAQS.map((faqsString) {
                    return Text(faqsString);
                  }).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
