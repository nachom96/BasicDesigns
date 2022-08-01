import 'package:flutter/material.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Selecciona una pantalla',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: const [
            SizedBox(height: 50,),
            _SelectScreenButton(text: 'Basic Design', route: 'basic_design',),
            SizedBox(height: 50,),
            _SelectScreenButton(text: 'Scroll Design', route: 'scroll_screen',),
            SizedBox(height: 50,),
            _SelectScreenButton(text: 'Home Design', route: 'home_screen',),
          ],
        ),
      ),
    );
  }
}

class _SelectScreenButton extends StatelessWidget {
  final String text;
  final String route;

  const _SelectScreenButton({
    Key? key,
    required this.text,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          textStyle: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          primary: Colors.yellow,
          onPrimary: Colors.black,
        ),
        child: Text(text),
      ),
    );
  }
}
