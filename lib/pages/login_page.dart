import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sub_flutter_pemula/constant.dart';
import 'package:sub_flutter_pemula/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final textController = TextEditingController();
  late String displayName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(kSafePadding),
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Restau',
                      style: GoogleFonts.poppins(
                          color: kBlack,
                          fontSize: 48.0,
                          fontWeight: FontWeight.w800),
                    ),
                    Text('rant',
                        style: GoogleFonts.poppins(
                            color: kOrange,
                            fontSize: 48.0,
                            fontWeight: FontWeight.w800))
                  ],
                ),
              ),
              SizedBox(height: 2 * kSafePadding),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('What is your name?',
                        style: GoogleFonts.poppins(
                            color: kBlack, fontWeight: FontWeight.w500)),
                    SizedBox(height: 2 * kBasePadding),
                    Container(
                      height: 12 * kBasePadding,
                      padding: EdgeInsets.symmetric(horizontal: kSafePadding),
                      decoration: BoxDecoration(
                          color: kWhite,
                          border: Border.all(color: kLightGrey),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: TextField(
                        controller: textController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Input your name'),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 2 * kSafePadding),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayName = textController.text;
                    });

                    if (displayName != '') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage(displayName: displayName);
                      }));
                    } else {
                      return null;
                    }
                  },
                  child: Text(
                    'NEXT',
                    style: GoogleFonts.lato(
                        color: kWhite, fontWeight: FontWeight.w500),
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
