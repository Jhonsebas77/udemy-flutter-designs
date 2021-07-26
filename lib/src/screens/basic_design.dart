import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage(
              'assets/img/landscape.jpeg',
            ),
          ),
          Title()
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New York Avenue',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'New York',
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.star_rate,
            color: Colors.red,
          ),
          Text('41'),
        ],
      ),
    );
  }
}
