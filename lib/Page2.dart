import 'package:flutter/material.dart';

import 'main.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 550.0,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff6469FD),
                    Color(0xff993EF1),
                  ]),
              borderRadius: BorderRadius.vertical(
                bottom:
                Radius.elliptical(MediaQuery.of(context).size.width, 100.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(
                  image: Image.network(
                    "https://cdn-icons-png.flaticon.com/128/387/387562.png",scale: 0.7,)
                      .image,),
                const SizedBox(height: 50),
                const Text(
                  "Book Appointment",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Text(
                  "Book an appointment with a\n        right doctor.",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade200,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 70),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Icon(
                Icons.circle,
                size: 15,
                color: Colors.grey,
              ),
              SizedBox(width: 8),
              Icon(
                Icons.circle,
                size: 15,
                color: (Global.i == 1) ? Colors.grey :  Color(0xff6469FD),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.circle,
                size: 15,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(height: 50),
          GestureDetector(
            onTap: (){
              setState(() {
                Navigator.of(context).pushNamed('page3');
              });
            },
            child: Container(
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff6469FD), width: 2),
                borderRadius: BorderRadius.circular(25),
              ),
              alignment: Alignment.center,
              child: Text(
                "Skip",
                style: TextStyle(fontSize: 18, color: Color(0xff6469FD)),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
