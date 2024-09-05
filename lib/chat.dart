import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const grid());
}

class grid extends StatelessWidget {
  const grid({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasonryGridView.builder(
        itemCount: 6,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
       itemBuilder:(context, index)=> ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
           child:Image.asset('images/images${index+1}''.jpg',),
       ),
       ),  
       );
  }
}


class photos extends StatelessWidget {
  const photos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1),
        itemCount: 4,
        padding: const EdgeInsets.all(8.0),
         itemBuilder: (context, index)=>ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset('photos/photo${index+1}''.jpg',
          height: 600,
          width: 300,
          fit:BoxFit.cover,),
         ),),
    );
  }
}

class posts extends StatelessWidget {
  const posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1),
        itemCount: 4,
         itemBuilder: (context, index)=>ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: container(),
          ),
         ))
    );
  }
}

class container extends StatelessWidget {
  const container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
        child: Image.asset('photos/photo1.jpg',
        height: 600,
        width: 300,
        fit: BoxFit.cover,),
      ),
    );
  }
}