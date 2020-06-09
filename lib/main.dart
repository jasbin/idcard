import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: UserCard(),
    ));

class UserCard extends StatefulWidget {
  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text("Identity Card"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user.jpg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey,
            ),
            Text(
              'Name',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(height: 10),
            Text(
              'Jasbin Karki',
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(
              'Address',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Samakushi, Kathmandu',
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  'email@jasbin.com.np',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
