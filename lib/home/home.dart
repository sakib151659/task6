import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List <String> names = [
      'sakib khan', 
      'rakib',
      'sahedul',
      'shuvo',
      'shamim'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text("HOME"),
            const SizedBox(width: 10,),
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(onPressed: (){

                    }, icon: Icon(Icons.clear)),
                    hintText: 'Saerch',

                  ),
                ),
              ),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: (){

          },
              icon: const Icon(Icons.logout))
        ],


      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
                color: Colors.teal.shade200,
              ),
              margin: const EdgeInsets.all(10),
              height: 50,
              child: Center(child: Text(names[index])),
            );
          }
      )
    );
  }
}
