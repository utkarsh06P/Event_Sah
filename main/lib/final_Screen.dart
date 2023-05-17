import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/Final_Background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.menu, color: Colors.blue),
                  ),
                  Container(
                    width: w / 4,
                    padding: const EdgeInsets.all(0),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      child: Text(
                        'Services',
                        style: GoogleFonts.lato(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: const Color(0x99ffffff)),
                      ),
                    ),
                  ),
                  Container(
                    width: w / 4,
                    padding: const EdgeInsets.all(0),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      child: Text(
                        'Testimonials',
                        style: GoogleFonts.lato(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: const Color(0x99ffffff)),
                      ),
                    ),
                  ),
                  Container(
                    width: w / 5,
                    padding: const EdgeInsets.all(0),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      child: Text(
                        'About Us',
                        style: GoogleFonts.lato(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: const Color(0x99ffffff)),
                      ),
                    ),
                  ),
                  Container(
                    width: w / 5,
                    padding: const EdgeInsets.all(0),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      child: Text(
                        'Contact Us',
                        style: GoogleFonts.lato(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: const Color(0x99ffffff)),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                // contentTnw (125:29)
                margin: EdgeInsets.fromLTRB(0, 40, w / 2, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        'COMPANY\nNAME',
                        style: GoogleFonts.lato(
                            fontSize: 68,
                            fontWeight: FontWeight.w900,
                            color: const Color(0xffffffff)),
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus imperdiet sed id elementum. Quam vel aliquam sit vulputate. Faucibus nec gravida ipsum pulvinar vel non dui.',
                      style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xffffffff)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.1,
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  'OUR SERVICES',
                  style: GoogleFonts.lato(
                      fontSize: 38,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xffffffff)),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(children: [
                  ClipRect(
                    // Lo1 (125:34)
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 16,
                        sigmaY: 16,
                      ),
                      child: Container(
                        height: h / 2,
                        padding: const EdgeInsets.all(20),
                        width: w / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: const LinearGradient(
                            begin: Alignment(-0, -1),
                            end: Alignment(0, 0.371),
                            colors: <Color>[
                              Color(0x3fffffff),
                              Color(0x3fffffff)
                            ],
                            stops: <double>[0, 1],
                          ),
                        ),
                        child: SizedBox(
                          // frame14302aBZ (125:35)
                          width: double.infinity,
                          height: 144,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // service1iHm (125:36)
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                                child: Text(
                                  'Service 1',
                                  style: GoogleFonts.lato(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(0xffffffff)),
                                ),
                              ),
                              Container(
                                // loremipsumdolorsitametconsecte (125:37)
                                constraints: const BoxConstraints(
                                  maxWidth: 281,
                                ),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus in libero risus',
                                  style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(0xffffffff)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: w * 0.05,
                  ),
                  ClipRect(
                    // Lo1 (125:34)
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 16,
                        sigmaY: 16,
                      ),
                      child: Container(
                        height: h / 2,
                        padding: const EdgeInsets.all(20),
                        width: w / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: const LinearGradient(
                            begin: Alignment(-0, -1),
                            end: Alignment(0, 0.371),
                            colors: <Color>[
                              Color(0x3fffffff),
                              Color(0x3fffffff)
                            ],
                            stops: <double>[0, 1],
                          ),
                        ),
                        child: SizedBox(
                          // frame14302aBZ (125:35)
                          width: double.infinity,
                          height: 144,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // service1iHm (125:36)
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                                child: Text(
                                  'Service 1',
                                  style: GoogleFonts.lato(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(0xffffffff)),
                                ),
                              ),
                              Container(
                                // loremipsumdolorsitametconsecte (125:37)
                                constraints: const BoxConstraints(
                                  maxWidth: 281,
                                ),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus in libero risus',
                                  style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(0xffffffff)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: w * 0.05,
                  ),
                  ClipRect(
                    // Lo1 (125:34)
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 16,
                        sigmaY: 16,
                      ),
                      child: Container(
                        height: h / 2,
                        padding: const EdgeInsets.all(20),
                        width: w / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: const LinearGradient(
                            begin: Alignment(-0, -1),
                            end: Alignment(0, 0.371),
                            colors: <Color>[
                              Color(0x3fffffff),
                              Color(0x3fffffff)
                            ],
                            stops: <double>[0, 1],
                          ),
                        ),
                        child: SizedBox(
                          // frame14302aBZ (125:35)
                          width: double.infinity,
                          height: 144,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // service1iHm (125:36)
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                                child: Text(
                                  'Service 1',
                                  style: GoogleFonts.lato(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(0xffffffff)),
                                ),
                              ),
                              Container(
                                // loremipsumdolorsitametconsecte (125:37)
                                constraints: const BoxConstraints(
                                  maxWidth: 281,
                                ),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus in libero risus',
                                  style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(0xffffffff)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: h * 0.1,
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  'TESTIMONIALS',
                  style: GoogleFonts.lato(
                      fontSize: 38,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xffffffff)),
                ),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Container(
                    height: h / 2,
                    width: w * 0.85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: const LinearGradient(
                          begin: Alignment(-0, -1),
                          end: Alignment(0, 0.371),
                          colors: <Color>[Color(0x3fffffff), Color(0x3fffffff)],
                          stops: <double>[0, 1],
                        ))),
              ),
              SizedBox(
                height: h * 0.2,
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Container(
                  height: h * 0.80,
                  width: w,
                  color: const Color(0xffb99674),
                  child: Row(children: [
                    Container(
                      color: Colors.white,
                      width: w * 0.40,
                    ),
                    SizedBox(
                      width: w * 0.54,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: w * 0.5,
                          height: h * 0.6,
                        ),
                      ),
                    )
                  ]),
                ),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
