import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/filters.dart';

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
        width: _hover ? 420 : 400,
        // color: _hover ? Colors.green : Colors.blue,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              widget.imageRoute,
            ),
            colorFilter: _hover
                ? null
                : ColorFilter.mode(Colors.grey, BlendMode.modulate),
          ),
        ),
      ),
    );
  }
}
