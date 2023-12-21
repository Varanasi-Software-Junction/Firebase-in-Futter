import 'package:flutter/material.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({super.key});

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  String groupValue ="No";
  //get value => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(child:  Column(
        children: [
          const Center(child: Text("Please Select Your Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(width: 2,color: Colors.black)
              ),
              child: Padding(
                padding:  EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Radio(value: "Yes", groupValue: groupValue, onChanged: (value){
                          setState(() {
                            groupValue =value!;
                          });
                        }),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                            height:70,
                            child: Image.network("https://cdn-icons-png.flaticon.com/512/1946/1946488.png"))
                      ],
                    ),
                    const Column(
                      children: [
                        Text("Shipper",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 300,
                            child: Text("Loream aset doller if you have any update about this app please contact our service and company",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color:Colors.grey),))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(width: 2,color: Colors.black)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Radio(value: "Now", groupValue: groupValue, onChanged: (value){
                          setState(() {
                            groupValue =value!;
                          });
                        }),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                            height:100,
                            child: Image.network("https://cdn-icons-png.flaticon.com/512/2769/2769339.png"))
                      ],
                    ),
                    const Column(
                      children: [
                        Text("Transporter",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 300,
                            child: Text("Loream aset doller if you have any update about this app please contact our service and company",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color:Colors.grey),))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: const BoxDecoration(color: Colors.indigo),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Continue",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),

                    ),

                  ),

                ),
                onTap: (){
                  Navigator.pushNamed(context, '/Profile_Page');
                },
              )

            ],
          )

        ],
      ),

      ),

    );
  }
}