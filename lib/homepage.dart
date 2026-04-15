import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(62, 73, 80, 1),
          title: Text("LiveX" ,style: GoogleFonts.bonaNovaSc(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            
          ),),
          bottom: TabBar(
            labelStyle: GoogleFonts.openSans(
              
            ),
            labelColor: Colors.white,
            unselectedLabelColor: const Color.fromARGB(255, 170, 171, 172),
            tabs: [
            Tab(text: "live",),
            Tab(text: "For you",),
            Tab(text: "Upcoming",),
            Tab(text: "Finished",)
          ]
          ),
          
        ),
        body: TabBarView(
        children: [
           SingleChildScrollView(
  child: Center(
    child: Column(
      children: [
        SizedBox(height: 20),

        Container(
          padding: EdgeInsets.all(8),
          height: 200,
          width: 380,
          decoration: BoxDecoration(color: const Color.fromARGB(255, 189, 216, 238),
            borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center ,
              children: [
                Text("•Live", textAlign: TextAlign.left, style: GoogleFonts.openSans(fontSize: 17, fontWeight: FontWeight.w600,color: Colors.red), ),
              Text(
        "IND vs AUS",
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),)
              ],
            ),
        ),

        SizedBox(height: 20),

        Container(
          padding: EdgeInsets.all(8),
          height: 200,
          width: 380,
          // color: Colors.red,
          decoration: BoxDecoration(color: const Color.fromARGB(255, 189, 216, 238),
            borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("•Live", textAlign: TextAlign.left, style: GoogleFonts.openSans(fontSize: 17, fontWeight: FontWeight.w600,color: Colors.red), ),
              ],
            ),
        ),
      ],
    ),
  ),
),
          Center(child: Text("For You")),
          Center(child: Text("Upcoming")),
          Center(child: Text("Finished")),
        ],
      )),
    );
    
  }
}