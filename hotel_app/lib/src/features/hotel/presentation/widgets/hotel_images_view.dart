// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ScrollableImageWidget extends StatefulWidget {
  final List<String> imageUrls;
  const ScrollableImageWidget({
    Key? key,
    required this.imageUrls,
  }) : super(key: key);

  @override
  _ScrollableImageWidgetState createState() => _ScrollableImageWidgetState();
}

class _ScrollableImageWidgetState extends State<ScrollableImageWidget> {
  final PageController _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          height: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.imageUrls.length,
            itemBuilder: (context, index) {
              return Image.asset(
                widget.imageUrls[index],
                fit: BoxFit.cover,
              );
            },
            onPageChanged: (int index) {
              _currentPageNotifier.value = index;
            },
          ),
        ),
      ],
    );
  }
}
