import 'package:flutter/material.dart';

class ContactRow extends StatelessWidget {
  const ContactRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
        IconButton(onPressed: () {}, icon: Icon(Icons.whatshot)),
        IconButton(onPressed: () {}, icon: Icon(Icons.where_to_vote_sharp)),
        IconButton(onPressed: () {}, icon: Icon(Icons.table_view_outlined)),
      ],
    );
  }
}
