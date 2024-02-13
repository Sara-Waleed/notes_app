import 'package:flutter/material.dart';

import '../constant/constsnts.dart';


class AddButton extends StatelessWidget {
  const AddButton({super.key, this.ontap, this.isloading = false});

  final void Function()? ontap;

  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: KprimaryColor,
            borderRadius: BorderRadius.circular(
              8,
            )),
        child: Center(
          child: isloading
              ? const SizedBox(
            height: 24,
            width: 24,
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          )
              : const Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}