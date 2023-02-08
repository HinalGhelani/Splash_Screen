import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool? done = prefs.getBool('done') ?? false;
  bool? first = prefs.getBool('done') ?? false;
  runApp(
    MaterialApp(
      initialRoute: (first == false)
          ? '/'
          : (done == false)
              ? 'page3'
              : 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MyApp(),
        'page1': (context) => const Page1(),
        'page2': (context) => const Page2(),
        'page3': (context) => const Page3(),
        'home': (context) => const HomePage(),
      },
    ),
  );
}

class Global {
  static int i = 0;
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PageController pageController = PageController();
  late TabController tabController;

  List<Widget> getPages = [const Page1(), const Page2(), const Page3()];

  splash() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setBool('first', true);
  }

  @override
  void initState() {
    super.initState();
    splash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          physics: BouncingScrollPhysics(),
          onPageChanged: (val) {
            setState(() {
              tabController.animateTo(val);
            });
          },
          controller: pageController,
          children: getPages),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        backgroundColor: Color(0xff983DF0),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Welcome",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color(0xff983DF0)),
            ),
            Text(
              "Home Page",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Color(0xff983DF0)),
            ),
          ],
        ),
      ),
    );
  }
}
