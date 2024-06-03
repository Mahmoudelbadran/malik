import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        focusColor: Colors.black,
        onPressed: () {},
        child: const Icon(
          Icons.chat,
          color: Colors.white,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      persistentFooterButtons: const [
        Text(
          "hello",
          style: TextStyle(color: Colors.white),
        ),
        Icon(
          Icons.face,
          color: Colors.white,
        )
      ],
      persistentFooterAlignment: AlignmentDirectional.center,
      drawer: const Drawer(
        backgroundColor: Colors.red,
      ),
      onDrawerChanged: (x){
        print(x);
      },
      endDrawer: const Drawer(),
      onEndDrawerChanged: (y){
        print(y);
      },
      body: SizedBox(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 100,top: 50,bottom: 10,right: 10),
              padding: EdgeInsets.all(10),
              width: 400,
              height: 100,
              color: Colors.red,
              child: Text("hello",style: TextStyle(color: Colors.white,
                  fontSize: 30,fontWeight: FontWeight.w900,letterSpacing: 5,shadows: [
                Shadow(color: Colors.blueAccent,blurRadius: 50,),
                Shadow(color: Colors.black,blurRadius: 50,),
              ]),),
            ),
            Container(
              margin: EdgeInsets.only(left: 100,top: 50,bottom: 10,right: 10),
              padding: EdgeInsets.all(10),
              width: 400,
              height: 100,
              color: Colors.red,
              child: Text("hello",style: TextStyle(color: Colors.white,
                  fontSize: 30,fontWeight: FontWeight.w900,letterSpacing: 5,shadows: [
                    Shadow(color: Colors.blueAccent,blurRadius: 50,),
                    Shadow(color: Colors.black,blurRadius: 50,),
                  ]),),
            ),
            Container(
              margin: EdgeInsets.only(left: 100,top: 50,bottom: 10,right: 10),
              padding: EdgeInsets.all(10),
              width: 400,
              height: 100,
              color: Colors.red,
              child: const Text("hello",style: TextStyle(color: Colors.white,
                  fontSize: 30,fontWeight: FontWeight.w900,letterSpacing: 5,shadows: [
                    Shadow(color: Colors.blueAccent,blurRadius: 50,),
                    Shadow(color: Colors.black,blurRadius: 50,),
                  ]),),
            )
          ],
        ) ,
      ),
    );
  }
}
