import 'package:flutter/material.dart';
import 'package:uidesign2/Screens/page1.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      home: HomeScreen(),
    ));

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  appBar: AppBar(
        //  backgroundColor: Colors.white,
        //     toolbarHeight: 10,
        //    ),
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Icon(Icons.arrow_back),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 27),
            child: Text('Register',
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF595959))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Full Name',
              style: TextStyle(color: Color(0xFFA0A0A0)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 45,
              child: TextField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Password',
              style: TextStyle(color: Color(0xFFA0A0A0)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 45,
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Confirm Password',
              style: TextStyle(color: Color(0xFFA0A0A0)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 45,
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              children: [
                Checkbox(
                  fillColor: MaterialStateProperty.all(Color(0xFF2A826C)),
                  value: this.value,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ), //Chec
                Padding(
                  padding: const EdgeInsets.only(left: 3, top: 6),
                  child: Text.rich(
                    TextSpan(
                      text: 'I accept the',
                      style: TextStyle(fontSize: 12),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Terms & Conditions of Use',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF2A826C),
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' and',
                                  style: TextStyle(
                                      color: Color(0XFF000000),
                                      decoration: TextDecoration.none),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '\nPrivacy Policy',
                                        style: TextStyle(
                                          color: Color(0xFF2A826C),
                                          decoration: TextDecoration.underline,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: ' of Smart AgriBiz',
                                              style: TextStyle(
                                                  color: Color(0xFF000000),
                                                  decoration:
                                                      TextDecoration.none)),
                                        ])
                                  ]),
                            ]),
                        // can add more TextSpans here...
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 125),
            child: Center(
              child: SizedBox(
                width: 320,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF2A826C))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page1()),
                    );
                  },
                  child: const Text('CONTINUE'),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
