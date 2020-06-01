import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/icon.png',
    title: "Saturação por Bases",
    description: ""
  ),
  Slide(
    imageUrl: 'assets/images/icon.png',
    title: "Neutralização do Alumínio e Elevação do Ca e Mg",
    description: ""
  ),
  Slide(
    imageUrl: 'assets/images/icon.png',
    title: "Guarçoni e Sobreira (2017)",
    description: ""
  )
];