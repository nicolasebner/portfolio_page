import 'package:flutter/material.dart';
import 'package:portfolio_website/helpers/responsiveness.dart';

class ProjectImage extends StatefulWidget {
  const ProjectImage({
    Key? key,
    required this.imageRoute,
    required this.height,
  }) : super(key: key);

  final String imageRoute;
  final double height;

  @override
  State<ProjectImage> createState() => _ProjectImageState();
}

class _ProjectImageState extends State<ProjectImage> {
  bool _hover = false;

  double _imageWidth(context) {
    if (ResponsiveWidget.isSmallerThanLargeScreen(context)) {
      return _hover ? 320 : 300;
    } else {
      return _hover ? 420 : 400;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (val) => setState(() {
        _hover = val;
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        height: _hover ? widget.height - 20 : widget.height - 30,
        width: _imageWidth(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(
              "assets/${widget.imageRoute}",
            ),
            colorFilter: _hover
                ? null
                : const ColorFilter.mode(Colors.grey, BlendMode.modulate),
          ),
        ),
      ),
    );
  }
}
