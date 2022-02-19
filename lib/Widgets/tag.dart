import 'package:flutter/material.dart';

class Tag extends StatefulWidget {
  final String content;
  bool isSelected = false;
  Tag({Key? key, required this.content}) : super(key: key);
  @override
  _TagState createState() => _TagState();
}

class _TagState extends State<Tag> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: InkWell(
        onTap: () {
          setState(() {
            //TODO: Handle tag selection
            widget.isSelected = !widget.isSelected;
          });
        },
        child: Chip(
          shape: StadiumBorder(
            side: BorderSide(
              color: widget.isSelected ? Theme.of(context).colorScheme.primaryVariant.withOpacity(0.7) :
                  Theme.of(context).colorScheme.secondaryVariant,
            ),
          ),
          backgroundColor: widget.isSelected ? Theme.of(context).colorScheme.primaryVariant.withOpacity(0.7) :
              Theme.of(context).colorScheme.background,
          label: Text(widget.content,
            style: TextStyle(
              color: widget.isSelected ? Theme.of(context).colorScheme.background :
                  Theme.of(context).colorScheme.primaryVariant,
              ),
            ),
          ),
        ),
      );
    }
}
