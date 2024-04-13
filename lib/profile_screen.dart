import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfileScreen>{
  final double coverHeight = 280;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: buildCoverImage(),
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Ftechnology-network&psig=AOvVaw1cynC7isGOO8p1cxuadDcz&ust=1713100165839000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLik1Pmhv4UDFQAAAAAdAAAAABAE'
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );
}