import 'package:flutter/material.dart';

import 'custom_list_tile.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Bio",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                Colors.white10,
                Colors.grey,
              ]),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
            ),
            Text(
              'elancer flutter - 2022',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Text(
              'ucas ti',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomListTile(
                    leading: Icons.mobile_friendly,
                    trailing: Icons.call,
                    title: "Mobile",
                    subTitle: "0594433839",
                    onTab: () {
                      print('mobile');
                    },
                  ),
                  SizedBox(height: 20,),
                  CustomListTile(
                    leading: Icons.email,
                    trailing: Icons.send,
                    title: "Email",
                    subTitle: "hbakhit1@smail.ucas.edu.ps",
                    onTab: () {
                      print('email');
                    },
                  ),
                  SizedBox(height: 20,),
                  CustomListTile(
                    leading: Icons.location_history,
                    trailing: Icons.map,
                    title: "Location",
                    subTitle: "gaza",
                    onTab: () {
                      print('location');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
