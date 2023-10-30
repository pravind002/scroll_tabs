import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_tabs/page_one.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();
  List<Widget> imgList = [const PageOne()];
  final int _current = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Scroll Bar'),
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 500,
                color: Colors.amber,
                width: Get.width,
              ),
              // const TabBar(
              //     // isScrollable: true,
              //     indicatorSize: TabBarIndicatorSize.tab,
              //     tabs: [
              //       Tab(
              //         text: 'Page 1',
              //       ),
              //       Tab(
              //         text: 'Page 2',
              //       ),
              //       Tab(
              //         text: 'Page 3',
              //       ),
              //     ]),
              // const Expanded(
              //   child: TabBarView(
              //       children: [Text('Page1'), Text('Page 2'), Text('Page 3')]),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller,
                    child: Container(
                      width: 20.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.red
                                  : Colors.red)
                              .withOpacity(_current == entry.key ? 1 : 0.3)),
                    ),
                  );
                }).toList(),
              ),
              PageView(
                controller: _controller,
                children: const [PageOne()],
              ),

              // CarouselSlider(
              //     carouselController: _controller,
              //     options: CarouselOptions(
              //         scrollDirection: Axis.vertical,
              //         scrollPhysics: const NeverScrollableScrollPhysics(),
              //         // height: 150,
              //         // aspectRatio: 16 / 9,
              //         viewportFraction: 1,
              //         enlargeCenterPage: false,
              //         // autoPlay: true,
              //         onPageChanged: (index, reason) {
              //           setState(() {
              //             _current = index;
              //           });
              //         }),
              //     items: imgList

              //     // .map((item) => Container(
              //     //       decoration: BoxDecoration(
              //     //           // color: mainColor.withOpacity(.1),
              //     //           image: DecorationImage(
              //     //               image: AssetImage(item), fit: BoxFit.cover)),
              //     //       // child: Center(
              //     //       //     child: Image.asset(
              //     //       //   item,
              //     //       //   fit: BoxFit.fitWidth,
              //     //       //   height: height,
              //     //       // )),
              //     //     ))
              //     // .toList(),
              //     ),
            ],
          ),
        ),
      ),
    );
  }
}
