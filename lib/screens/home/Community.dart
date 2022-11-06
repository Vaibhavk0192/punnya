import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'community_post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),
      home: Community(),
    );
  }
}

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9D7EC),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF83458A),
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: Text(
          "Community",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CommunityPost(
              authorName: "chirayu",
              tags: ["shelter", "nature"],
              imageSource: 'assests/explore_page/community-images (1).png',
              likeCount: "2.2k",
              commentCount: "2.2k",
            ),
            CommunityPost(
              authorName: "vaibhav",
              tags: ["shelter", "nature"],
              imageSource: 'assests/explore_page/community-images (1).png',
              likeCount: "2.2k",
              commentCount: "2.2k",
            ),
            CommunityPost(
              authorName: "vaibhav",
              tags: ["shelter", "nature"],
              imageSource: 'assests/explore_page/community-images (1).png',
              likeCount: "2.2k",
              commentCount: "2.2k",
            ),
            CommunityPost(
              authorName: "vaibhav",
              tags: ["shelter", "nature"],
              imageSource: 'assests/explore_page/community-images (1).png',
              likeCount: "2.2k",
              commentCount: "2.2k",
            ),
          ],
        ),
      ),
    );
  }
}