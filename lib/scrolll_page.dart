import 'package:flutter/material.dart';
import 'package:scroll_tabs/page_one.dart';
import 'package:scroll_tabs/page_two.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ScrollablePageView(),
//     );
//   }
// }

class ScrollablePageView extends StatefulWidget {
  const ScrollablePageView({super.key});

  @override
  _ScrollablePageViewState createState() => _ScrollablePageViewState();
}

class _ScrollablePageViewState extends State<ScrollablePageView> {
  final PageController _pageController = PageController();
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              children: const [
                PageOne(),PageTwo()
              ],),
            // PageView.builder(
            //   controller: _pageController,
            //   itemCount: 5, // Adjust the number of pages as needed
            //   itemBuilder: (context, index) {
            //     return Container(
            //       color: Colors.blue, // Page background color
            //       child: Center(
            //         child: Text(
            //           'Page ${index + 1}',
            //           style: const TextStyle(fontSize: 24, color: Colors.white),
            //         ),
            //       ),
            //     );
            //   },
            // ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Container(
            //     padding: const EdgeInsets.all(16.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: List.generate(5, (index) {
            //         return Container(
            //           width: 8.0,
            //           height: 8.0,
            //           margin: const EdgeInsets.symmetric(horizontal: 4.0),
            //           decoration: BoxDecoration(
            //             shape: BoxShape.circle,
            //             color: _currentPage.floor() == index
            //                 ? Colors.white
            //                 : Colors.white54,
            //           ),
            //         );
            //       }),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
