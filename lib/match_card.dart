  import 'package:flutter/material.dart';
  import 'package:google_fonts/google_fonts.dart';
  import 'match_detail_page.dart';


  class MatchCard extends StatelessWidget {
    // final String team1 = data['response']['items'];
    // final String team2;
    // final String score;
    // final String status;
    final Map match;

     const MatchCard({
      super.key,
      // required this.team1,
      // required this.team2,
      // required this.score,
      // required this.status,
      required this.match
    });

    @override
    Widget build(BuildContext context) {
      final teamA = match['teama'];
      final teamB = match['teamb'];
      return InkWell(
        onTap: (){
          // Navigator.push(context, MaterialPageRoute(builder: (context) => MatchDetailPage( team1: team1,
          // team2: team2,
          // score: score,
          // status: status,)));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
              // LIVE + STATUS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text(
                  //   "LIVE",
                  //   style: GoogleFonts.poppins(
                  //     color: Colors.red,
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 12,
                  //   ),
                  // ),
                  Text(
                    match['status_str'].toString().toUpperCase(),
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
        
             const SizedBox(height: 10),

              Row(
                children: [
                  Image.network(teamA['logo_url'], height: 24),
                  const SizedBox(width: 8),
                  Text(teamA['short_name'],
                      style: const TextStyle(color: Colors.white)),
                  const Spacer(),
                  Text(teamA['scores'] ?? "-",
                      style: const TextStyle(color: Colors.white)),
                ],
              ),

              const SizedBox(height: 6),

              Row(
                children: [
                  Image.network(teamB['logo_url'], height: 24),
                  const SizedBox(width: 8),
                  Text(teamB['short_name'],
                      style: const TextStyle(color: Colors.white)),
                  const Spacer(),
                  Text(teamB['scores'] ?? "-",
                      style: const TextStyle(color: Colors.white)),
                ],
              ),

              const SizedBox(height: 10),

              Text(
                match['status_note'] ?? "",
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      );
    
    
  }}

