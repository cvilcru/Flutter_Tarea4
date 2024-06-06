import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tarea4/app/view/result.dart';

//Game Page
class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset("assets/images/rock.png",
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
                  Image.asset("assets/images/rock.png",
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
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return ResultPage();
              },));
            },
            child: Container(
              width: 200,
              height: 50,
              color: Color(0xFFD9D9D9),
              alignment: Alignment.center,
              child: Text(
                "JUGAR",
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
              Image.asset(
                "assets/images/tarea3/shape.png",
                width: 141,
                height: 129,
              ),
            ],
          )
        ],
      ),
    );
  }
}
