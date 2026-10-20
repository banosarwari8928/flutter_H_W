import 'package:flutter/material.dart';

void main() {
  runApp(myhomework());
}

class myhomework extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('App Bar')),
        body: Container(
          width: double.infinity,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.8,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Color(0xfffc0fc0), Color(0xfffa003f)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Flutter Development',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '1:40 - 2:40',
                        style: TextStyle(color: Colors.grey.shade200),
                      ),
                      Text(
                        ' Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, nemo at? Aut, excepturi perferendis. Magni optio placeat qui facilis libero non vero? Culpa eum, iure reprehenderit perspiciatis perferendis alias officiis.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
