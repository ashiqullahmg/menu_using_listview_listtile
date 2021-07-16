import 'package:flutter/material.dart';

class Option {
  Icon icon;
  String title;
  String subtitle;

  Option({required this.icon, required this.title, required this.subtitle});
}

final options = [
  Option(
    icon: Icon(
      Icons.all_out_sharp,
      size: 40.0,
      color: Colors.white,
    ),
    title: 'Option One',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
  Option(
    icon: Icon(
      Icons.assignment_ind_outlined,
      size: 40.0,
      color: Colors.white,
    ),
    title: 'Option Two',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
  Option(
    icon: Icon(
      Icons.backup_rounded,
      size: 40.0,
      color: Colors.white,
    ),
    title: 'Option Three',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
  Option(
    icon: Icon(
      Icons.blur_on,
      size: 40.0,
      color: Colors.white,
    ),
    title: 'Option Four',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
  Option(
    icon: Icon(
      Icons.brightness_low_outlined,
      size: 40.0,
      color: Colors.white,
    ),
    title: 'Option Five',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
  Option(
    icon: Icon(
      Icons.build_circle_outlined,
      size: 40.0,
      color: Colors.white,
    ),
    title: 'Option Six',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
  Option(
    icon: Icon(
      Icons.calculate_outlined,
      size: 40.0,
      color: Colors.white,
    ),
    title: 'Option Seven',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
  Option(
    icon: Icon(
      Icons.settings,
      size: 40.0,
      color: Colors.white,
    ),
    title: 'Option Eight',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
];
