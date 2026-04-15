import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'match_card.dart';

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
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor:  Color.fromRGBO(48, 55, 59, 1),
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

ListView(
        children: const [
          MatchCard(
            team1: "IND",
            team2: "AUS",
            score: "120/3 (15.2)",
            status: "India batting",
          ),
          MatchCard(
            team1: "ENG",
            team2: "SA",
            score: "89/2 (12.1)",
            status: "England batting",
          ),
          MatchCard(
            team1: "PAK",
            team2: "NZ",
            score: "156/6 (18.4)",
            status: "Pakistan batting",
          ),
        ],
      ),


          Center(child: Text("For You")),
          Center(child: Text("Upcoming")),
          Center(child: Text("Finished")),
        ],
      )),
    );

  }
}