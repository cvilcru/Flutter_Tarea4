import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tarea4/app/view/components/header.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController _controller = TextEditingController();
  double _value = 0;
  List<Color> _listColors = [Colors.white, Colors.amber.shade500, Colors.green.shade500, Colors.blueGrey.shade500];

  @override
  void initState() {
    super.initState();

    _controller.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _listColors[_value.toInt()],
      body: Column(
        children: [
          Header(title: "Piedra, papel o tijeras"),
          Container(
            height: 96,
            alignment: Alignment.center,
            child: Text(
              "Nuevo Nombre",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "Nombre del jugador",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: _savePlayerName,
            child: Text("GUARDAR"),
          ),
          Slider(value: max(1, _value), onChanged: (currentValue) {
            setState(() {
              _value = currentValue;
              print(_value.toInt());
            });
          }, max: 3, min: 1, divisions: 2,)
        ],
      ),
    );
  }

  void _printLatestValue() {
    final text = _controller.text;
    print(text);
  }

  Future<void> _savePlayerName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', _controller.text);

    Navigator.of(context).pop();
  }
}
