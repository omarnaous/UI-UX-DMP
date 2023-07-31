import 'package:dmptest/Pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.orange,
          primarySwatch: Colors.orange,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.orange,
          )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
              controller.jumpToPage(value);
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'سلة',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'سلة',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'حسابي',
            ),
          ],
          selectedFontSize: 18,
          unselectedFontSize: 14,
        ),
        body: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [const MainPage(), Container(), Container(), Container()],
        ),
      ),
    );
  }
}
