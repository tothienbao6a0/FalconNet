import 'package:flutter/material.dart';

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generator'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Image.network(
              'https://resources.finalsite.net/images/f_auto,q_auto,t_image_size_2/v1598545454/peddie/dwkfurq7ep94v2cc7rn7/PeddieAM.png',
              width: double.infinity,
              height: 500,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Text('Generator'),
          ),
        ],
      ),
    );
  }
}
