import 'package:flutter/material.dart';

class custom_AppBar extends StatelessWidget {
  const custom_AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      title: Text(
          "Notes"
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.search)),
        ),
      ],
    );
  }
}

