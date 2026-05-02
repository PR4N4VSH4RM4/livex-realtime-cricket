import 'package:crex_clone/api_service.dart';
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
FutureBuilder(
  future: ApiService.getlivematch(),
  builder: (context, snapshot) {

    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: CircularProgressIndicator());
    }

    if (snapshot.hasError) {
      return Center(child: Text("Error: ${snapshot.error}"));
    }
    if(!snapshot.hasData || snapshot.data == null ){
      return const Center(child: Text("NULL"),);
    }

    final matches = snapshot.data;

    return ListView.builder(
      itemCount: matches?.length ?? 0,
      itemBuilder: (context, index) {
        final match = matches![index];

        return MatchCard(match: match);
      },
    );
  },
),

          Center(child: Text("For You")),
          Center(child: Text("Upcoming")),
          Center(child: Text("Finished")),
        ],
      )),
    );

  }
}