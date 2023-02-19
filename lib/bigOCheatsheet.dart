import 'package:flutter/material.dart';

class BigOCheatsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("Big-O Notation Cheatsheet", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Text("O(1): Constant Time", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(
                "An algorithm with a time complexity of O(1) takes the same amount of time to run, regardless of the size of the input.",
                style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            Text("O(n): Linear Time", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(
                "An algorithm with a time complexity of O(n) takes more time to run as the size of the input grows.",
                style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            Text("O(log n): Logarithmic Time", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(
                "An algorithm with a time complexity of O(log n) takes a logarithmic amount of time to run as the size of the input grows.",
                style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            Text("O(n^2): Quadratic Time", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(
                "An algorithm with a time complexity of O(n^2) takes more time to run as the square of the size of the input grows.",
                style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            Text("O(2^n): Exponential Time", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(
                "An algorithm with a time complexity of O(2^n) takes more time to run as 2 to the power of the size of the input grows.",
                style: TextStyle(fontSize: 14)),
            Image.network(
              'https://miro.medium.com/max/1100/1*0AO5pM3BBiIl8FLUJS_Uhg.webp',
              width: double.infinity,
              height: 500,
              fit: BoxFit.fill,
            ),
            Image.network(
              'https://res.cloudinary.com/practicaldev/image/fetch/s--Wr2oHsky--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://www.bigocheatsheet.com/img/big-o-cheat-sheet-poster.png',
              width: double.infinity,
              height: 500,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
