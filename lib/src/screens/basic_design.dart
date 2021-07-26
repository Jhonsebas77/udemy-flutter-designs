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
          Title(),
          ButtomSection(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Id reprehenderit occaecat exercitation deserunt et commodo anim aliquip esse et. Anim nisi cillum laborum qui cillum cillum labore. Ullamco quis veniam proident eu fugiat adipisicing. Consequat fugiat tempor excepteur dolore anim aliquip non enim. Enim enim deserunt deserunt pariatur ex elit pariatur ut ipsum nisi. Reprehenderit cupidatat esse amet proident incididunt sit excepteur dolore proident consectetur anim anim ad nostrud.',
              textAlign: TextAlign.justify,
            ),
          )
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

class ButtomSection extends StatelessWidget {
  const ButtomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtomItem(
          icon: Icons.phone,
          name: 'Call',
        ),
        ButtomItem(
          icon: Icons.send,
          name: 'Send',
        ),
        ButtomItem(
          icon: Icons.share,
          name: 'Share',
        ),
      ],
    );
  }
}

class ButtomItem extends StatelessWidget {
  final String name;
  final IconData icon;
  const ButtomItem({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
