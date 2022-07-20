import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // Image
        const Image(image: AssetImage('assets/landscape.jpg')),
        // Title
        const Title(),
        // Button Section
        const ButtonSection(),
        // Description
       Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: const Text('Duis exercitation minim sit mollit fugiat aute aliqua incididunt voluptate non dolore. Ex pariatur irure nostrud sit non nostrud irure velit reprehenderit ullamco in. Labore ullamco excepteur sit ea occaecat ipsum labore velit.')) 
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          IconSection(
            icon: Icons.call,
            name: 'CALL',
          ),
          IconSection(
            icon: Icons.map_sharp,
            name: 'ROUTE',
          ),
          IconSection(
            icon: Icons.share,
            name: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class IconSection extends StatelessWidget {
  final IconData icon;
  final String name;
  const IconSection({
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
          size: 30,
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
