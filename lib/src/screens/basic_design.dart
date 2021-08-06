import 'package:flutter/material.dart';
import '../utils/responsive_util.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Image(
                image: AssetImage(
                  'assets/img/landscape.jpeg',
                ),
                fit: ResponsiveWidget.isLargeScreen(context)
                    ? BoxFit.scaleDown
                    : BoxFit.cover,
              ),
            ),
            Title(),
            ButtomSection(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Id reprehenderit occaecat exercitation deserunt et commodo anim aliquip esse et. Anim nisi cillum laborum qui cillum cillum labore. Ullamco quis veniam proident eu fugiat adipisicing. Consequat fugiat tempor excepteur dolore anim aliquip non enim. Enim enim deserunt deserunt pariatur ex elit pariatur ut ipsum nisi. Reprehenderit cupidatat esse amet proident incididunt sit excepteur dolore proident consectetur anim anim ad nostrud.',
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      );
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
            if (!ResponsiveWidget.isSmallScreen(context))
              Expanded(
                child: Container(),
              )
            else
              Container(),
            Icon(
              Icons.star_rate,
              color: Colors.red,
            ),
            Text('41'),
          ],
        ),
      );
}

class ButtomSection extends StatelessWidget {
  const ButtomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
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

class ButtomItem extends StatelessWidget {
  const ButtomItem({
    required this.name,
    required this.icon,
    Key? key,
  }) : super(key: key);
  final String name;
  final IconData icon;
  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.blue,
          ),
          if (!ResponsiveWidget.isSmallScreen(context))
            Text(
              name,
              style: TextStyle(
                color: Colors.blue,
              ),
            )
          else
            Container(),
        ],
      );
}
