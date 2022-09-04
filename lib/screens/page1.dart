import 'package:flutter/material.dart';
import 'package:uidesign2/main.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 27),
              child: Text('Business Details',
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF595959))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Business Name',
                style: TextStyle(color: Color(0xFFA0A0A0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 45,
                child: TextField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.business),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Business Type',
                style: TextStyle(
                  color: Color(0xFF595959),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270),
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
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(child: Text('Skip')),
            )
          ],
        ),
      ),
    );
  }
}
