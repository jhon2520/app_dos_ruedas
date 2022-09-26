import 'package:flutter/material.dart';

class CardOptionModel{

  final String optionId;
  final String title;
  final String subtitle;
  final IconData icon;
  final Color backgroundColor;

  CardOptionModel({
    required this.optionId, 
    required this.title, 
    required this.subtitle, 
    required this.icon, 
    required this.backgroundColor});

}

