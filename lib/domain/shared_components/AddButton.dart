import 'package:flutter/material.dart';

import '../constant/constsnts.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    required this.ontap
  });
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 250,
        child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: KprimaryColor,
            ),
            onPressed: (){},
            child: Center(child: Text("Add",style: TextStyle(fontSize: 25),))),
      ),
    );
  }
}

