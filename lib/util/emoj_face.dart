import 'package:flutter/material.dart';

class EmojFace extends StatelessWidget {
  final String emojText;
  const EmojFace({Key? key, required this.emojText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              color: Colors.blue[500],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(16.0),
            child: Text(
              emojText,
              style: TextStyle(fontSize: 24),
            )
          ),
          SizedBox(height: 6,),
          Text('Bad', style: TextStyle(
            color: Colors.white,
          ),)
      ],
    );
  }
}
