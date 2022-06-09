import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class EmailLoginView extends StatelessWidget {
  const EmailLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Logo Area',
            textAlign: TextAlign.center,
            style: GoogleFonts.oswald(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
                labelText: 'E-Mail',
              ),
              initialValue: 'sahilselfmade@gmail.com',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
                labelText: 'Password',
              ),
              initialValue: 'password',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePageView()));
                },
                child: const Text('Login'),
              ),
            ),
          )
        ],
      )),
    );
  }
}
