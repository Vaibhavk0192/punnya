import 'package:flutter/material.dart';

import 'community_post_tag.dart';

class CommunityPost extends StatefulWidget {
  const CommunityPost({
    Key? key,
    required this.authorName,
    required this.tags,
    required this.imageSource,
    required this.likeCount,
    required this.commentCount,
  }) : super(key: key);

  final List<String> tags;
  final String authorName, imageSource;
  final String likeCount, commentCount;

  @override
  State<CommunityPost> createState() => _CommunityPostState();
}

class _CommunityPostState extends State<CommunityPost> {
  bool isFavourite = false;

  List<Widget> tagsList() {
    List<Widget> formattedTags = [];
    for (var i = 0; i < widget.tags.length; i++) {
      formattedTags += [
        CommunityPostTag(
          tag: capitalize(widget.tags[i]),
          margin: EdgeInsets.only(right: 5),
        ),
      ];
    }
    return formattedTags;
  }

  String capitalize(String text) {
    return "${text[0].toUpperCase()}${text.substring(1).toLowerCase()}";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFF83458A),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        capitalize(widget.authorName),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: tagsList(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            widget.imageSource,
            fit: BoxFit.fitWidth,
          ),
          Row(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFavourite = !isFavourite;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: isFavourite ? Colors.red : Colors.black,
                    ),
                  ),
                  Text(
                    widget.likeCount,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, .50),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                  Text(
                    widget.commentCount,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, .50),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assests/explore_page/send.png',
                      height: 25,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_horiz),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}