import 'package:flutter/material.dart';

import 'main.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
                    "https://cdn-icons-png.flaticon.com/128/4228/4228742.png",scale: 0.7,)
                      .image,),
                const SizedBox(height: 50),
                const Text(
                  "Search Doctors",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Text(
                  "Get list of best doctor\n        nearby you.",
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
                color: (Global.i == 0) ?  Color(0xff6469FD) : Colors.grey ,
              ),
              SizedBox(width: 8),
              Icon(
                Icons.circle,
                size: 15,
                color: Colors.grey,
              ),
              SizedBox(width: 8),
              Icon(
                Icons.circle,
                size: 15,
                color:  Colors.grey,
              ),
            ],
          ),
          const SizedBox(height: 50),
          GestureDetector(
            onTap: (){
              setState(() {
                Navigator.of(context).pushNamed('page2');
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