import 'package:flutter/material.dart';
import 'package:homework/page2.dart';

import 'data_model.dart';

class MyFristPage extends StatefulWidget {
  const MyFristPage({super.key});

  @override
  State<MyFristPage> createState() => _MyFristPageState();
}

class _MyFristPageState extends State<MyFristPage> {
  List<Data> lst = [
    Data(
      thatColor: const LinearGradient(colors: [
        Color(0xffFFB976),
        Color(0xffFFB976),
      ]),
      height: 165,
      colors: const LinearGradient(colors: [
        Color(0xff48DA89),
        Color(0xff28C76F),
      ]),
      level: 'All level',
      title: 'Computer Science',
      name: 'Sarah Adam',
      raiting: 4.6,
      avatar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRt0XikLERJ8A3kTEC6_j9lMiLFu7-27j_AyA&usqp=CAU',
      profileName: 'Mahmoud.S',
      discription: 'Description: All can be perfect in math....',
      price: '\$50',
      thatTiltle: 'Math 102',
    ),
    Data(
      discription: 'Description: All can be perfect in any....',
      price: '\$80',
      thatTiltle: 'Computer Science 2',
      thatColor: const LinearGradient(colors: [
        Color(0xff00CFE8),
        Color(0xff1CE7FF),
      ]),
      height: 109,
      colors: const LinearGradient(colors: [
        Color(0xff00CFE8),
        Color(0xff1CE7FF),
      ]),
      level: 'Beginner',
      title: 'Math 101',
      name: 'Ahmed Medo',
      raiting: 5.0,
      avatar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKpeDKUVlK_AzUItjz2AGCxLCRqIsSk-2iLw&usqp=CAU',
      profileName: 'Mahmoud.S',
    ),
    Data(
      discription: 'Description: All can be perfect in prog....',
      price: 'Free',
      thatTiltle: 'Phython 3',
      thatColor: const LinearGradient(colors: [
        Color(0xff48DA89),
        Color(0xff48DA89),
      ]),
      height: 149,
      colors: const LinearGradient(colors: [
        Color(0xffE73959),
        Color(0xffFFC73C),
      ]),
      level: 'Intermediate',
      title: 'Algorithm',
      name: 'Seif El-deen',
      raiting: 4.0,
      avatar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKpeDKUVlK_AzUItjz2AGCxLCRqIsSk-2iLw&usqp=CAU',
      profileName: 'Mahmoud.S',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: const Color.fromARGB(255, 255, 255, 255),
        leading: Container(
          height: 65,
          width: 65,
          margin: const EdgeInsets.only(left: 7),
          child: Stack(
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 15,
                child: Container(
                  height: 20,
                  width: 20,
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, bottom: 5, right: 5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(lst[0].avatar),
                      )),
                ),
              ),
            ],
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Wellcome back',
              style: TextStyle(
                color: Color(
                  0xff222222,
                ),
                fontWeight: FontWeight.w700,
                fontSize: 10,
              ),
            ),
            Text(
              lst[0].profileName,
              style: const TextStyle(
                color: Color(
                  0xff222222,
                ),
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            height: 20,
            width: 20,
            margin: const EdgeInsets.only(right: 26),
            child: const Image(
              image: AssetImage('assets/bell.png'),
            ),
          ),
        ],
      ),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 19, top: 10),
          height: 225,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            gradient: LinearGradient(
              colors: [Color(0xff21C8F6), Color(0xff637BFF)],
              begin: AlignmentDirectional.topCenter,
              end: AlignmentDirectional.bottomCenter,
            ),
          ),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(top: 11),
              child: const Text(
                'Your  progress in Courses',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: lst.length,
                itemBuilder: (BuildContext context, int index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          lst[index].title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12.16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 87, top: 7),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color(0xffFFC960),
                                size: 10,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 6),
                                child: Text(
                                  '${lst[index].raiting}',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                              Container(
                                height: 3,
                                width: 3,
                                margin:
                                    const EdgeInsets.only(left: 6, bottom: 1),
                                child: const Icon(
                                  Icons.circle_sharp,
                                  size: 3,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 6),
                                child: Text(
                                  'By ${lst[index].name}',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                              Container(
                                  height: 3,
                                  width: 3,
                                  margin:
                                      const EdgeInsets.only(left: 6, bottom: 1),
                                  child: const Icon(
                                    Icons.circle_sharp,
                                    size: 3,
                                    color: Colors.white,
                                  )),
                              Container(
                                margin: const EdgeInsets.only(left: 6),
                                child: Text(
                                  lst[index].level,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 3),
                        height: 12,
                        width: 244,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 3,
                              top: 1.65,
                              bottom: 1.65,
                              right: lst[index].height),
                          height: 1.12,
                          decoration: BoxDecoration(
                            gradient: ((lst[index].colors)),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          ]),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16, left: 104),
          child: Row(
            children: [
              Container(
                width: 20,
                height: 1,
                color: Colors.black,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 7,
                  right: 7,
                ),
                child: const Text(
                  'Recommendation',
                  style: TextStyle(color: Color(0xff161719), fontSize: 14),
                ),
              ),
              Container(
                width: 20,
                height: 1,
                color: Colors.black,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: lst.length,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.only(top: 12, right: 29, left: 21),
              height: 106,
              width: 325,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Color(0xffF6F6F6),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => MyFakePage(data: lst[index],),
                    ),
                  );
                  print(index);
                  setState(() {});
                },
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    padding: const EdgeInsets.all(15),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        gradient: lst[index].thatColor),
                    child: const Image(
                        image: AssetImage('assets/GraduationCap.png')),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, top: 15),
                          child: Text(
                            lst[index].thatTiltle,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, top: 1),
                          child: Text(
                            lst[index].discription,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            'Price: ${lst[index].price}',
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 21, top: 10, bottom: 15),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFC960),
                                  size: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 6),
                                  child: Text(
                                    '${lst[index].raiting}',
                                    style: const TextStyle(
                                        color: Color(0xff161719),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Container(
                                  height: 3,
                                  width: 3,
                                  margin:
                                      const EdgeInsets.only(left: 6, bottom: 1),
                                  child: const Icon(
                                    Icons.circle_sharp,
                                    size: 3,
                                    color: Color(0xff91919F),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 6),
                                  child: Text(
                                    'By ${lst[index].name}',
                                    style: const TextStyle(
                                      color: Color(0xff91919F),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                    height: 3,
                                    width: 3,
                                    margin: const EdgeInsets.only(
                                        left: 6, bottom: 1),
                                    child: const Icon(
                                      Icons.circle_sharp,
                                      size: 3,
                                      color: Color(0xff91919F),
                                    )),
                                Container(
                                  margin: const EdgeInsets.only(left: 6),
                                  child: Text(
                                    lst[index].level,
                                    style: const TextStyle(
                                        color: Color(0xff91919F),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ]),
                        ),
                      ])
                ]),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
