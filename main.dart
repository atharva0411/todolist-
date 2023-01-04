import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: todo(),
    ),
  );
}

class todo extends StatelessWidget {
  const todo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(194, 68, 73, 230),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(142, 119, 37, 126),
        title: Text("My TO-DO List ",
            style: TextStyle(
              color: Color.fromARGB(200, 0, 0, 0),
              fontSize: 45,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text("WELCOME",
                style: TextStyle(
                  color: Color.fromARGB(0, 110, 121, 72),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),
            Row(
              children: [
                SizedBox(
                  height: 20,
                ),
                RoundCheckBox(
                  onTap: (selected) {},
                ),
                Text("Visit friend's place",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    )),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 20,
                ),
                RoundCheckBox(
                  onTap: (selected) {},
                ),
                Text("Complete flutter bootcamp assignment",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    )),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 20,
                ),
                RoundCheckBox(
                  onTap: (selected) {},
                ),
                Text("Complete marketing pitch",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    )),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: GNav(tabs: [
        GButton(
          icon: Icons.add,
        ),
        GButton(
          icon: Icons.local_activity,
        ),
        GButton(icon: Icons.add_alarm)
      ]),
    );
  }
}
