import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 190, 241, 132),
      appBar: AppBar(
        title: Text('PicTwins'),
        backgroundColor: Colors.green[500],
      ),
      body:ImagePage(),
    ),
  ));
}


class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ImagePage> {
  int leftImage = 1;
  int rightImage = 2;
  int score =0;
void game(){
 leftImage = Random().nextInt(8)+1;
 rightImage=Random().nextInt(8)+1;
  print(leftImage);
  print(rightImage);
  if (leftImage == rightImage){
    score++;
  }
}
  @override
  Widget build(BuildContext context) {
    //update varibel
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImage == rightImage 
          ? "you won!":
          "Try again",
        style: TextStyle(
          fontSize: 40.0,
          color: const Color.fromARGB(255, 126, 196, 13),

        ),
        ),
        Text('score:$score',
        style: TextStyle(
          fontSize: 40.0,
          color: const Color.fromARGB(255, 126, 196, 13),

        ), ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton
                  ( onPressed: () {
                    print('left button');
                    setState(() {
                       game();

                    });
              
                  },
                    child: Image.asset('images/image-$leftImage.png')
                    ),
                ),
              
              Expanded(        
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                       game();
                       });
                    },
                    child: Image.asset('images/image-$rightImage.png')
                  ),
              ),
             ],
          ),
        )
      ],
    );
  }
}



