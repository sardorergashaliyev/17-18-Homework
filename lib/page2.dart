import 'package:flutter/material.dart';

import 'data_model.dart';

class MyFakePage extends StatelessWidget {
  final Data data;

  const MyFakePage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 291,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: data.thatColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 62, left: 16.5),
                        height: 32,
                        width: 32,
                        child: const Image(
                          image: AssetImage('assets/Arrow.png'),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 62, left: 24),
                      child: const Text(
                        'Course details',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 62, left: 180, right: 16.5),
                      height: 25,
                      width: 25,
                      child:
                          const Image(image: AssetImage('assets/Shopping.png')),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 43, left: 36),
                      height: 75,
                      width: 75,
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/logo.png'),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 34.5, left: 16.5),
                          child: Text(
                            data.thatTiltle,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFFC73C),
                                    Color(0xffF19A1A),
                                  ],
                                ),
                              ),
                              margin: const EdgeInsets.only(top: 14),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 7.5),
                              child: Text(data.thatTiltle),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 32),
            child: const Text(
              'Description',
              style: TextStyle(
                  color: Color(0xff888888),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 32,
              right: 27,
            ),
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              'Phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Vel quam elementum pulvinar etiamnim lobortis scelerisque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur....',
              style: TextStyle(
                  color: Color(0xff161719),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 32),
            child: const Text(
              'Show more',
              style: TextStyle(
                  color: Color(0xff6360FF),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 16, left: 47, bottom: 32),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 1,
                      color: const Color(0xff888888),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 18,
                        right: 18,
                      ),
                      child: const Text(
                        'Author',
                        style:
                            TextStyle(color: Color(0xff888888), fontSize: 14),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 1,
                      color: const Color(0xff888888),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 22, bottom: 37),
            height: 104,
            width: 325,
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/Frame.png'),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30, left: 25),
                height: 48,
                width: 152,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff21C8F6),
                      Color(0xff637BFF),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    print('object');
                  },
                  child: const Center(
                    child: Text(
                      'Author Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30, left: 20),
                height: 48,
                width: 152,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff48DA89),
                      Color(0xff28C76F),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
