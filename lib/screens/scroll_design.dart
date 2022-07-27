import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff30BAD6),
        body: PageView(
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2(),
          ],
        )
        );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
    //Background
    Background(),
    MainContent(),
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var textStyle = const TextStyle( fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white );

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30,),
          Text( '11º', style: textStyle, ),
          Text( 'Miércoles', style: textStyle, ),
          Expanded(child: Container()),
          const Icon( Icons.keyboard_arrow_down, size: 100, color: Colors.white, )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: const Image(
          image: AssetImage('assets/scroll-1.png'),
        ));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: const StadiumBorder()
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 30),),
          ),
        ),
      ),
    );
  }
}