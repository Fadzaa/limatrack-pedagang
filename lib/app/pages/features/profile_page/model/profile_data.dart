import 'package:flutter/material.dart';
import '../../../../../common/constant.dart';
import 'profile.dart';

List<Profile> list_profile = [
  Profile(
      color: const Color(0xFFFFC700).withOpacity(0.1),
      icon: icQuestion,
      name: "Edukasi Pedagang",
      isDarkMode: false),
  Profile(
      color: const Color(0xFF0FA958).withOpacity(0.1),
      icon: icDarkMode,
      name: "Verifikasi Halal",
      isDarkMode: false),
  Profile(
      color: const Color(0xFFF654AE).withOpacity(0.1),
      icon: icPrivacy,
      name: "Kebijakan Privasi",
      isDarkMode: false),
  Profile(
      color: const Color(0xFF0FA958).withOpacity(0.1),
      icon: icDarkMode,
      name: "Tema Gelap",
      isDarkMode: true),
];
