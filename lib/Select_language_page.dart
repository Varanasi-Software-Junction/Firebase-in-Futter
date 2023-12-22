import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = "one";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 80,
                      child: Image.network(
                          "https://cdn-icons-png.flaticon.com/512/3304/3304773.png"))
                ],
              ),
              const Text(
                'Please Select Your Language',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 300,
                child: Text(
                  'You can change the language at any time',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(16),
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(

                        border: Border.all(color: Colors.indigo, width: 2),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButtonHideUnderline(//*******hide dropdown button underline***********//
                        child: DropdownButton<String>(
                            value: dropdownValue,
                            isExpanded: true,
                            iconSize: 36,

                            // icon: const Icon(Icons.menu,color: Colors.grey,),
                            items: const [
                              DropdownMenuItem<String>(
                                value: "one",
                                child: Text("Hindi"),
                              ),
                              DropdownMenuItem<String>(
                                value: "Two",
                                child: Text("English"),
                              ),
                              DropdownMenuItem<String>(
                                value: "Three",
                                child: Text("Punjabi"),
                              ),
                            ],
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            }),
                      ),
                    ),
                  )
                ],
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
                      decoration: BoxDecoration(color: Colors.indigo),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          "Next",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),

                        ),

                      ),

                    ),
                    onTap: (){
                      Navigator.pushNamed(context, '/Verify_Number_Page');
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}