  import 'package:flutter/material.dart';
  import 'package:google_fonts/google_fonts.dart';
  import 'match_detail_page.dart';


  class MatchCard extends StatelessWidget {
    final String team1;
    final String team2;
    final String score;
    final String status;

    const MatchCard({
      super.key,
      required this.team1,
      required this.team2,
      required this.score,
      required this.status,
    });

    @override
    Widget build(BuildContext context) {
      return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => MatchDetailPage( team1: team1,
          team2: team2,
          score: score,
          status: status,)));
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
                  Text(
                    "LIVE",
                    style: GoogleFonts.poppins(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    status,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
        
              const SizedBox(height: 10),
        
              // TEAMS
              Text(
                "$team1 vs $team2",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
        
              const SizedBox(height: 6),
        
              // SCORE
              Text(
                score,
                style: GoogleFonts.poppins(
                  color: Colors.greenAccent,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
        
              const SizedBox(height: 10),
        
              // VIEW DETAILS
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "View Details",
                    style: GoogleFonts.poppins(
                      color: Colors.blueAccent,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.arrow_forward_ios,
                      size: 12, color: Colors.blueAccent),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
