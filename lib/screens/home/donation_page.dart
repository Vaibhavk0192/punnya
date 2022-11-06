import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class ReviewDonation extends StatefulWidget {
  const ReviewDonation({super.key});

  @override
  State<ReviewDonation> createState() => _ReviewDonationState();
}

class _ReviewDonationState extends State<ReviewDonation> {
  bool donateAnonynously = false;
  String paymentMethod = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Review Donation",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 1.1,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        'assests/explore_page/community-images (1).png',
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: const [
                          Text("Name of NGO"),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Write wishes",
                              hintStyle: TextStyle(fontSize: 12),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Donate Anonymously",
                          style: TextStyle(fontSize: 17),
                        ),
                        Checkbox(
                          activeColor: Color(0xFFB97EC1),
                          value: donateAnonynously,
                          onChanged: (s) {
                            setState(() {
                              donateAnonynously = s!;
                            });
                          },
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                  ],
                ),
                Text(
                  "Select Payment Mode",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    ListTile(
                      title: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: paymentMethod != "internet-banking"
                                ? Border.all(width: 1, color: Colors.black)
                                : null,
                            boxShadow: paymentMethod == "internet-banking"
                                ? const [
                              BoxShadow(
                                  offset: Offset(0, 2),
                                  color: Colors.black12,
                                  spreadRadius: 3,
                                  blurRadius: 5),
                              BoxShadow(
                                offset: Offset(0, 0),
                                color: Colors.white,
                                blurRadius: 0,
                                spreadRadius: 0,
                              )
                            ]
                                : null,
                          ),
                          child: Text("Internet Banking")),
                      leading: Radio(
                        activeColor: Color(0xFFB97EC1),
                        value: "internet-banking",
                        groupValue: paymentMethod,
                        onChanged: (s) {
                          setState(() {
                            paymentMethod = s!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: paymentMethod != "cards"
                              ? Border.all(width: 1, color: Colors.black)
                              : null,
                          boxShadow: paymentMethod == "cards"
                              ? const [
                            BoxShadow(
                                offset: Offset(0, 2),
                                color: Colors.black12,
                                spreadRadius: 3,
                                blurRadius: 5),
                            BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.white,
                              blurRadius: 0,
                              spreadRadius: 0,
                            )
                          ]
                              : null,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Credit/Debit Card"),
                            Image.asset('assests/ProfileInfo/cards.png')
                          ],
                        ),
                      ),
                      leading: Radio(
                        activeColor: Color(0xFFB97EC1),
                        value: "cards",
                        groupValue: paymentMethod,
                        onChanged: (s) {
                          setState(() {
                            paymentMethod = s!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: paymentMethod != "upi"
                              ? Border.all(width: 1, color: Colors.black)
                              : null,
                          boxShadow: paymentMethod == "upi"
                              ? const [
                            BoxShadow(
                                offset: Offset(0, 2),
                                color: Colors.black12,
                                spreadRadius: 3,
                                blurRadius: 5),
                            BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.white,
                              blurRadius: 0,
                              spreadRadius: 0,
                            )
                          ]
                              : null,
                        ),
                        child: Row(
                          children: [
                            Expanded(child: Text("UPI")),
                            Image.asset('assests/Profile_Page/gpay.png'),
                            SizedBox(width: 5),
                            Image.asset('assests/Profile_Page/paytm.png')
                          ],
                        ),
                      ),
                      leading: Radio(
                        activeColor: Color(0xFFB97EC1),
                        value: "upi",
                        groupValue: paymentMethod,
                        onChanged: (s) {
                          setState(() {
                            paymentMethod = s!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Text(
                  "Enter Amount",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF83458A)),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFF83458A), width: 2),
                        ),
                        label: Icon(Icons.currency_rupee),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.black12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
                        backgroundColor:
                        MaterialStatePropertyAll<Color>(Color(0xFFB270A2))),
                    onPressed: () {},
                    child: Text(
                      "Send Your Donation",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}