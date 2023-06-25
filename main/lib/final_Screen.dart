import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();

  void scrollToServices({int index = 1}) {
    final double offset = index != null
        ? index * 765.0
        : 0.0; // Adjust this value based on your layout
    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void scrollToTestimonials({int index = 1}) {
    final double offset = index != null
        ? index * 1500
        : 0.0; // Adjust this value based on your layout
    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }

  void scrollToAboutUs({int index = 1}) {
    final double offset = index != null
        ? index * 2400
        : 0.0; // Adjust this value based on your layout
    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 1200),
      curve: Curves.easeInOut,
    );
  }

  final scaleFactor = 0.09;
  final scaleFactor1 = 0.05;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _mobileController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  void dispose1() {
    _scrollController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Submit form logic goes here
      String name = _nameController.text;
      String mobile = _mobileController.text;
      String email = _emailController.text;
      String message = _messageController.text;

      // Print the form data for demonstration
      print('Name: $name');
      print('Mobile: $mobile');
      print('Email: $email');
      print('Message: $message');

      // Clear the form fields
      _nameController.clear();
      _mobileController.clear();
      _emailController.clear();
      _messageController.clear();
    }
  }

  int activeIndex = 0;
  final List<List<String>> textList = [
    [
      'Review 1',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus imperdiet sed id elementum. Quam vel aliquam sit vulputate. Faucibus nec gravida ipsum pulvinar vel non dui.'
    ],
    [
      'Review 2',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus imperdiet sed id elementum. Quam vel aliquam sit vulputate. Faucibus nec gravida ipsum pulvinar vel non dui.'
    ],
    [
      'Review 3',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus imperdiet sed id elementum. Quam vel aliquam sit vulputate. Faucibus nec gravida ipsum pulvinar vel non dui.'
    ],
    [
      'Review 4',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus imperdiet sed id elementum. Quam vel aliquam sit vulputate. Faucibus nec gravida ipsum pulvinar vel non dui.'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          controller: _scrollController,
          child: Column(children: [
            Stack(
              children: [
                Positioned.fill(
                  child: ColorFiltered(
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.darken),
                    child: Opacity(
                      opacity: 0.85,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/xyz.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
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
                              onPressed: () => scrollToServices(),
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero),
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
                              onPressed: () => scrollToTestimonials(),
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero),
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
                              onPressed: () => scrollToAboutUs(),
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero),
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
                              onPressed: () => scrollToAboutUs(),
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero),
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
                    ),
                    SizedBox(
                      height: h * 0.1,
                    ),
                    Container(
                      height: h * 0.85,
                      width: w * 0.5,
                      decoration: const BoxDecoration(),
                      // contentTnw (125:29)

                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'COMPANY\nNAME',
                              style: GoogleFonts.lato(
                                  fontSize: 68,
                                  fontWeight: FontWeight.w900,
                                  color: const Color(0xffffffff)),
                            ),
                            SizedBox(
                              height: h * 0.05,
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
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 2 * h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/bg10.jpg'), fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: h * 0.1,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            'OUR SERVICES',
                            style: GoogleFonts.lato(
                                fontSize: 38,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(100, 20, 0, 0),
                        child: Row(children: [
                          ClipRect(
                            // Lo1 (125:34)
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 16,
                                sigmaY: 16,
                              ),
                              child: Container(
                                height: h * 0.75,
                                // padding: const EdgeInsets.all(10),
                                width: w / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  gradient: LinearGradient(
                                    begin: const Alignment(-0, -1),
                                    end: const Alignment(0, 0.371),
                                    colors: <Color>[
                                      Colors.white,
                                      Colors.grey.shade300
                                    ],
                                    stops: const <double>[0, 1],
                                  ),
                                ),
                                child: SizedBox(
                                  // frame14302aBZ (125:35)
                                  width: double.infinity,
                                  height: 144,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: h * 0.45,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16)),
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "images/service.jpg"),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      Container(
                                        // service1iHm (125:36)
                                        margin: const EdgeInsets.fromLTRB(
                                            8, 8, 8, 16),
                                        child: Text(
                                          'Service 1',
                                          style: GoogleFonts.lato(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            8, 8, 8, 0),
                                        // loremipsumdolorsitametconsecte (125:37)
                                        constraints: const BoxConstraints(
                                          maxWidth: 281,
                                        ),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus in libero risus',
                                          style: GoogleFonts.lato(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.black),
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
                                height: h * 0.75,
                                // padding: const EdgeInsets.all(20),
                                width: w / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  gradient: LinearGradient(
                                    begin: const Alignment(-0, -1),
                                    end: const Alignment(0, 0.371),
                                    colors: <Color>[
                                      Colors.white,
                                      Colors.grey.shade300
                                    ],
                                    stops: const <double>[0, 1],
                                  ),
                                ),
                                child: SizedBox(
                                  // frame14302aBZ (125:35)
                                  width: double.infinity,
                                  height: 144,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: h * 0.45,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16)),
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "images/service.jpg"),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      Container(
                                        // service1iHm (125:36)
                                        margin: const EdgeInsets.fromLTRB(
                                            8, 8, 8, 16),
                                        child: Text(
                                          'Service 1',
                                          style: GoogleFonts.lato(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            8, 8, 8, 0),
                                        // loremipsumdolorsitametconsecte (125:37)
                                        constraints: const BoxConstraints(
                                          maxWidth: 281,
                                        ),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus in libero risus',
                                          style: GoogleFonts.lato(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.black),
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
                                height: h * 0.75,
                                // padding: const EdgeInsets.all(20),
                                width: w / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  gradient: LinearGradient(
                                    begin: const Alignment(-0, -1),
                                    end: const Alignment(0, 0.371),
                                    colors: <Color>[
                                      Colors.white,
                                      Colors.grey.shade300
                                    ],
                                    stops: const <double>[0, 1],
                                  ),
                                ),
                                child: SizedBox(
                                  // frame14302aBZ (125:35)
                                  width: double.infinity,
                                  height: 144,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: h * 0.45,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(16),
                                                topRight: Radius.circular(16)),
                                            color: Colors.white,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "images/service.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                      Container(
                                        // service1iHm (125:36)
                                        margin: const EdgeInsets.fromLTRB(
                                            8, 8, 8, 16),
                                        child: Text(
                                          'Service 1',
                                          style: GoogleFonts.lato(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            8, 8, 8, 0),
                                        // loremipsumdolorsitametconsecte (125:37)
                                        constraints: const BoxConstraints(
                                          maxWidth: 281,
                                        ),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus in libero risus',
                                          style: GoogleFonts.lato(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.black),
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
                        height: h * 0.2,
                      ),
                      Column(
                        children: [
                          Text(
                            'TESTIMONIALS',
                            style: GoogleFonts.lato(
                                fontSize: 38,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: h * 0.05,
                          ),
                          Container(
                            height: h / 2,
                            width: w * 0.85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                gradient: const LinearGradient(
                                  begin: Alignment(0, 0.571),
                                  end: Alignment(-0, -4),
                                  colors: <Color>[
                                    Colors.grey,
                                    Color(0x3fffffff)
                                  ],
                                  stops: <double>[0, 1],
                                )),
                            child: Column(
                              children: [
                                Center(
                                  child: CarouselSlider(
                                    options: CarouselOptions(
                                        height: h * 0.4,
                                        initialPage: 0,
                                        autoPlay: true,
                                        autoPlayInterval:
                                            const Duration(seconds: 5),
                                        onPageChanged: ((index, reason) =>
                                            setState(
                                                () => activeIndex = index))),
                                    items: textList.map((texts) {
                                      return Builder(
                                        builder: (BuildContext context) {
                                          return Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            decoration: BoxDecoration(
                                              // color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  texts[0],
                                                  style: const TextStyle(
                                                      fontSize: 24.0,
                                                      color: Colors.white),
                                                ),
                                                const SizedBox(height: 10.0),
                                                Text(
                                                  texts[1],
                                                  style: const TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ), // Closing bracket for Column
                                          );
                                        },
                                      );
                                    }).toList(),
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.02,
                                ),
                                AnimatedSmoothIndicator(
                                    activeIndex: activeIndex, count: 4)
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.2,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Container(
                height: h,
                width: w,
                color: const Color(0xffb99674),
                child: Row(children: [
                  Container(
                    color: Colors.white,
                    width: w * 0.4,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: h * 0.15,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.shortestSide *
                                          scaleFactor,
                                  width:
                                      MediaQuery.of(context).size.shortestSide *
                                          scaleFactor,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black)),
                                  child: const Center(
                                      child: Icon(
                                    Icons.phone,
                                    color: Colors.black,
                                  )),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.03,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Give Us a Call',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF333333)),
                                  ),
                                  SizedBox(
                                    height: h * 0.02,
                                  ),
                                  const Text(
                                    '+91 989898989',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: h * 0.03,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.shortestSide *
                                          scaleFactor,
                                  width:
                                      MediaQuery.of(context).size.shortestSide *
                                          scaleFactor,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black)),
                                  child: const Center(
                                      child: Icon(
                                    Icons.mail,
                                    color: Colors.black,
                                  )),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.03,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Send us an email',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: h * 0.02,
                                  ),
                                  const Text(
                                    'Example@gmail.com',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: h * 0.03,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.shortestSide *
                                          scaleFactor,
                                  width:
                                      MediaQuery.of(context).size.shortestSide *
                                          scaleFactor,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black)),
                                  child: const Center(
                                      child: Icon(
                                    Icons.location_on,
                                    color: Colors.black,
                                  )),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.03,
                              ),
                              const Text(
                                'Drop By and Talk',
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: h * 0.04,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.shortestSide *
                                          scaleFactor1,
                                  width:
                                      MediaQuery.of(context).size.shortestSide *
                                          scaleFactor1,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black)),
                                  child: const Center(
                                    child: Icon(
                                      FontAwesomeIcons.twitter,
                                      color: Color(0xFF1DA1F2),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.01,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.shortestSide *
                                        scaleFactor1,
                                width:
                                    MediaQuery.of(context).size.shortestSide *
                                        scaleFactor1,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: const Center(
                                  child: Icon(
                                    FontAwesomeIcons.linkedin,
                                    color: Color(0xFF0077B5),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.015,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.shortestSide *
                                        scaleFactor1,
                                width:
                                    MediaQuery.of(context).size.shortestSide *
                                        scaleFactor1,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: const Center(
                                  child: Icon(
                                    FontAwesomeIcons.instagram,
                                    color: Color(0xFFC13584),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.015,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.shortestSide *
                                        scaleFactor1,
                                width:
                                    MediaQuery.of(context).size.shortestSide *
                                        scaleFactor1,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: const Center(
                                  child: Icon(
                                    FontAwesomeIcons.facebook,
                                    color: Color(0xFF1877F2),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: w * 0.54,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: w * 0.8,
                        height: h * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(50),
                            child: Column(children: [
                              SizedBox(
                                height: h * 0.04,
                              ),
                              const Center(
                                child: Text(
                                  'Get in Touch',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w100),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: Form(
                                  key: _formKey,
                                  child: Column(children: <Widget>[
                                    TextFormField(
                                      controller: _nameController,
                                      decoration: const InputDecoration(
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 20),
                                        labelText: 'Name',
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.02,
                                    ),
                                    TextFormField(
                                      controller: _mobileController,
                                      decoration: const InputDecoration(
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 20),
                                        labelText: 'Mobile',
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.02,
                                    ),
                                    TextFormField(
                                      controller: _emailController,
                                      decoration: const InputDecoration(
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 20),
                                        labelText: 'Email',
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.02,
                                    ),
                                    TextFormField(
                                      controller: _messageController,
                                      decoration: const InputDecoration(
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 40),
                                        labelText: 'Message',
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.02,
                                    ),
                                    SizedBox(
                                      height: h * 0.06,
                                      width: w * 0.8,
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0), // Adjust the value as needed for desired roundness
                                                ),
                                              ),
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                          Color>(
                                                      Colors.grey.shade600)),
                                          // _submitForm
                                          onPressed: () {},
                                          child: const Text(
                                            'SUBMIT',
                                            style: TextStyle(fontSize: 20),
                                          )),
                                    )
                                  ]),
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
