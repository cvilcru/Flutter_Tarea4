import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultPage extends StatelessWidget {

  List<String> gamePlay = ["rock", "paper", "scissors"];

  @override
  Widget build(BuildContext context) {
    //Random plays
    int player1Play = Random().nextInt(3);
    int player2Play = Random().nextInt(3);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              "Piedra, papel o tijeras",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4A4A4A)),
            ),
            height: 200,
            color: Color(0x4DFFE84A),
            alignment: Alignment.center,
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset("assets/images/tarea3/${gamePlay[player1Play]}.png",
                      width: 150, height: 150),
                  Text(
                    "Player 1",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Image.asset("assets/images/tarea3/${gamePlay[player2Play]}.png",
                      width: 150, height: 150),
                  Text(
                    "Player 2",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
          playerWinner(gamePlay[player1Play], gamePlay[player2Play]),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: 200,
              height: 50,
              color: Color(0xFFD9D9D9),
              alignment: Alignment.center,
              child: Text(
                "VOLVER",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF5B5B5B)),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/images/tarea3/shape.png", width: 141,height: 129,),
            ],
          )
        ],
      ),
    );
  }

  Widget playerWinner(String player1, String player2) {
    String result = "Empate";
    if(player1 != player2){
      if ((player1 == "rock" && player2 == "scissors") ||
          (player1 == "scissors" && player2 == "paper") ||
          (player1 == "paper" && player2 == "rock")) {
        result = "Player 1 Wins";
      } else {
        result = "Player 2 Wins";
      }
    }

    return Container(
          height: 96,
          alignment: Alignment.center,
          child: Text(
            result,
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        );
  }
}
