import 'package:basketball_counter/widgets/Custom_Elevated_Button.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int teamAScore = 0;
  int teamBScore = 0;

  void addPoints({Team? team, int? points}) {
    setState(() {
      if (team != null) {
        if (team == Team.teamA) {
          teamAScore += points ?? 0;
        } else {
          teamBScore += points ?? 0;
        }
      } else {
        teamAScore = 0;
        teamBScore = 0;
      }
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
              'https://i.pinimg.com/736x/16/f6/f4/16f6f47b686973ac531256ac471df80b.jpg',
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('BasketBall Counter',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          spacing: 20,
                          children: [
                            const Text(
                              'Team A',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$teamAScore',
                              style: const TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            CustomElevatedButton(
                              points: 1,
                              onPressed: () {
                                addPoints(team: Team.teamA, points: 1);
                              },
                            ),
                            CustomElevatedButton(
                              points: 2,
                              onPressed: () {
                                addPoints(team: Team.teamA, points: 2);
                              },
                            ),
                            CustomElevatedButton(
                              points: 3,
                              onPressed: () {
                                addPoints(team: Team.teamA, points: 3);
                              },
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 300,
                          child: VerticalDivider(color: Colors.black),
                        ),
                        Column(
                          spacing: 20,
                          children: [
                            const Text(
                              'Team B',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$teamBScore',
                              style: const TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            CustomElevatedButton(
                              points: 1,
                              onPressed: () {
                                addPoints(team: Team.teamB, points: 1);
                              },
                            ),
                            CustomElevatedButton(
                              points: 2,
                              onPressed: () {
                                addPoints(team: Team.teamB, points: 2);
                              },
                            ),
                            CustomElevatedButton(
                              points: 3,
                              onPressed: () {
                                addPoints(team: Team.teamB, points: 3);
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                    CustomElevatedButton(
                      onPressed: () {
                        addPoints();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum Team { teamA, teamB }