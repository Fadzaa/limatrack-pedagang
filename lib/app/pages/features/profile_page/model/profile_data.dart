import 'package:flutter/material.dart';
import '../../../../../common/constant.dart';
import '../../../../router/app_pages.dart';
import 'profile.dart';

List<Profile> list_profile = [
  Profile(
      color: const Color(0xFFFFC700).withOpacity(0.1),
      icon: icQuestion,
      name: "Edukasi Pedagang",
      routes: Routes.EDUKASI_PEDAGANG_PAGE,
      isDarkMode: false),
  Profile(
      color: const Color(0xFF0FA958).withOpacity(0.1),
      icon: icDarkMode,
      name: "Verifikasi Halal",
      routes: Routes.VERIFICATION_HALAL_PAGE,
      isDarkMode: false),
  Profile(
      color: const Color(0xFFF654AE).withOpacity(0.1),
      icon: icPrivacy,
      name: "Kebijakan Privasi",
      routes: '',
      isDarkMode: false),
  Profile(
      color: const Color(0xFF0FA958).withOpacity(0.1),
      icon: icDarkMode,
      name: "Tema Gelap",
      routes: '',
      isDarkMode: true),
];
