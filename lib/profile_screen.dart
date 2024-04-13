import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfileScreen>{
  final double coverHeight = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context){
    final top = coverHeight - profileHeight / 2;

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildTop(){
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Ftechnology-network&psig=AOvVaw1cynC7isGOO8p1cxuadDcz&ust=1713100165839000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLik1Pmhv4UDFQAAAAAdAAAAABAE',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Fvector-art%2F29376511-shinchan-cute-face-vector&psig=AOvVaw1ouYGpuIm0sqi7FX4vBbQk&ust=1713101450632000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMCL06ymv4UDFQAAAAAdAAAAABAZ'
        ),
      );

  Widget buildContent() => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            Text(
              'Flutter Engineer',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
      );
}