// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Specific_Info extends StatefulWidget {
  const Specific_Info({Key? key}) : super(key: key);

  @override
  State<Specific_Info> createState() => _Specific_InfoState();
}

class _Specific_InfoState extends State<Specific_Info> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Stack(
            // mainAxisAlignment: MainAxisAlignment.,
            children: [
              SizedBox(
                height: 20,
                child: InkWell(
                  onTap: () {},
                  child: Image(
                    image: AssetImage('assests/Arrow1.png'),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Details",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: SizedBox(
                  height: 20,
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset('assests/ProfileInfo/Share1.png'),
                  ),
                ),
              )
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: SizedBox(
          // color: Colors.blue,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Image.asset(
                "assests/ProfileInfo/NGO_Service.png",
              ),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height * (0.7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name of NGO",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assests/Details_NGO/Placeholder1.png",
                                scale: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Location Link",
                                  style: TextStyle(
                                    color: Color.fromRGBO(131, 69, 138, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tempore saepe aperiam, quisquam illum omnis obcaecati numquam porro facere tempora dolores quos, adipisci voluptate sunt inventore! Aut adipisci ab, eaque nam numquam cum libero ullam amet minus, odio error ipsam eos aspernatur, est dolorem similique assumenda animi quasi nobis esse accusantium?",
                            style: TextStyle(
                              color: Color.fromRGBO(131, 69, 138, 1),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.people_alt_outlined,
                                size: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "800",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            // height:MediaQuery.of(context).size.height * (0.167),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Focus",
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Text(
                                      "Social Cause",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Contact-Info",
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Text(
                                      "+91-XXXXXXXX98",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "+91-XXXXXXXX58",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Donation",
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Text(
                                      "Featured",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  "assests/MakeNGO/Facebook.png",
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset("assests/MakeNGO/Twitter.png"),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset("assests/MakeNGO/Linkedin.png"),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset("assests/MakeNGO/Instagram.png"),
                              ),
                            ],
                          ),
                          Center(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 45,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  color: Color.fromRGBO(178, 112, 162, 1),
                                ),
                                child: Center(
                                  child: Text(
                                    "Donate",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
