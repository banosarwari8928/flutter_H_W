import 'package:bookfly/program.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myhomework());
}

List<Program> programs = [
  Program(
    1,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzdH04GNuSr0JHScI-NtRRfRW_-7cQ49RV0EW96Cc7iw&s=10',
    '1:00-2:00',
    'Next.js',
    'Next js is a class of programming',
  ),
  Program(
    2,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREEMjzsllP9LWmOgtgFn0bzYlWw6a5dGSZNmd5xS0GZQ&s=10',
    '2:00-3:00',
    'Flutter',
    'Flutter is a class of programming',
  ),
  Program(
    3,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5_YfHGWyIp9hxgfp7OLAeVoSvW3764xwttlaMgOXoKg&s=10',
    '3:00-4:00',
    'Css',
    'Css is a class of programming',
  ),
];

class Myhomework extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('App Bar')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Available Programs'),
              Expanded(
                child: ListView.builder(
                  itemCount: programs.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: index % 2 == 0
                              ? LinearGradient(
                                  begin: Alignment.bottomRight,
                                  end: Alignment.topLeft,
                                  colors: [
                                    Color(0xffe8e9eb),
                                    Color(0xffacada8),
                                  ],
                                )
                              : LinearGradient(
                                  begin: Alignment.bottomRight,
                                  end: Alignment.topLeft,
                                  colors: [
                                    Colors.brown.shade200,
                                    Colors.brown.shade600,
                                  ],
                                ),
                        ),
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        // height: ,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                              ),
                              child: Image.network(
                                programs[index].imageUrl,
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              programs[index].title,
                              // style: ,
                            ),
                            Text(programs[index].time),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(programs[index].describtion),
                                  ),
                                  Icon(Icons.arrow_circle_right_outlined),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
