import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Animations {

  static fadeInRightAnimation( Widget child ) => FadeInRight(
    from: 15,
    delay: const Duration( seconds: 1 ),
    child: child,
  );

}