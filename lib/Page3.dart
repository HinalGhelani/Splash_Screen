import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';


class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
                    "https://cdn-icons-png.flaticon.com/512/6124/6124328.png",scale: 2.9,)
                      .image,),
                const SizedBox(height: 50),
                const Text(
                  "Book Diagnostic",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Text(
                  "Search and book diagnostic\n                 test.",
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
                color: Colors.grey,
              ),
              SizedBox(width: 8),
              Icon(
                Icons.circle,
                size: 15,
                color:(Global.i == 2) ? Colors.grey :  Color(0xff6469FD),
              ),
            ],
          ),
          const SizedBox(height: 50),
          GestureDetector(
            onTap: ()async{
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.setBool('done', true);
              Navigator.of(context).pushReplacementNamed('home');
            },
            child: Container(
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff6469FD), width: 2),
                borderRadius: BorderRadius.circular(25),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Next",
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