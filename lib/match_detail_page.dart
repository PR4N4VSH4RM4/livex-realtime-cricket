import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MatchDetailPage extends StatelessWidget {
  final String team1;
  final String team2;
  final String score;
  final String status;

  const MatchDetailPage({
    super.key,
    required this.team1,
    required this.team2,
    required this.score,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$team1 vs $team2"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "$team1 vs $team2",
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              score,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              status,
              style: GoogleFonts.poppins(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}