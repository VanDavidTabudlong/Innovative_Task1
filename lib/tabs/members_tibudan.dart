import 'package:flutter/material.dart';
import 'package:innovative_task1/profile_page_tibudan.dart';

class User_Tibudan{
  final int id, age;
  final String name, relationship, Avatar, occupation, birthday;

  const User_Tibudan({
    required this.id,
    required this.name,
    required this.relationship,
    required this.Avatar,
    required this.occupation,
    required this.birthday,
    required this.age
  });

}

class Members_Tibudan extends StatefulWidget {
  const Members_Tibudan({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Members_Tibudan> createState() => _Members_TibudanState();
}

class _Members_TibudanState extends State<Members_Tibudan> {

  List<User_Tibudan> users = [
    const User_Tibudan(
      id: 2020302619,
      name: 'Mark Rywell G. Gaje',
      relationship: 'Me',
      Avatar: 'assets/gaje/mark.jpg',
      occupation: 'Student',
      birthday: 'May 31, 2001',
      age: 21
    ),
    const User_Tibudan(
        id: 2020302507,
        name: 'Welyn G. Gaje',
        relationship: 'Mother',
        Avatar: 'assets/gaje/welyn.jpg',
        occupation: 'HouseWife',
        birthday: 'November 26, 1976',
        age: 45
    ),
    const User_Tibudan(
        id: 2020302940,
        name: 'Jory B. Gaje',
        relationship: 'Father',
        Avatar: 'assets/gaje/jory.jpg',
        occupation: 'Farmer',
        birthday: 'January 8, 1973 ',
        age: 49
    ),
    const User_Tibudan(
        id: 2020301996,
        name: 'Paul Jowey G. Gaje',
        relationship: 'Younger Brother',
        Avatar: 'assets/gaje/jowey.jpg',
        occupation: 'Student',
        birthday: 'May 31, 2001',
        age: 16
    ),
    const User_Tibudan(
        id: 2020305455,
        name: 'Joe Emmanuel G. Gaje',
        relationship: 'Youngest Brother',
        Avatar: 'assets/gaje/manny.jpg',
        occupation: 'Student',
        birthday: 'January 6, 2016',
        age: 6
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index){
          final user = users[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(user.Avatar),
              ),
              title: Text(user.name),
              subtitle: Text('${user.relationship}'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProfilePage(user: user)
                ));
              },
            ),
          );
        },

      )
    );
  }
}
