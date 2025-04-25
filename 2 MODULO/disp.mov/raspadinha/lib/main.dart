import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Joguinho() );
}

class Joguinho extends StatelessWidget {
  const Joguinho({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raspadinha',
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home:const DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: SafeArea (
            child: TabBar(
              labelColor: Colors.blueAccent,
              unselectedLabelColor: Colors.blueGrey,
             indicatorColor: Colors.blueAccent,
             indicatorSize: TabBarIndicatorSize.label,
             tabs: [
              Tab(icon: Icon(Icons.looks_one),),
              Tab(icon: Icon(Icons.looks_two),),
             ],
              ),
            ),
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                //AdvancedScreen(),
                //BasicScreen(),
              ],
            )
          ),
      ),
    );
  }
}