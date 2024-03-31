
import 'pesanan.dart';

final List <Pesanan> pesanan_data = [
  Pesanan(
      name: "Ahmad Soebarjo",
      items: pesanan_items
  ),
  Pesanan(
      name: "Budi",
      items: pesanan_items2
  ),
];

final List<PesananItem> pesanan_items = [
  PesananItem(
      name: "Telur Gulung",
      price: 2000,
      total: 2
  ),
  PesananItem(
      name: "Batagor",
      price: 5000,
      total: 1
  ),
];

final List<PesananItem> pesanan_items2 = [
  PesananItem(
      name: "Telur Gulung",
      price: 2000,
      total: 2
  ),
  PesananItem(
      name: "Batagor",
      price: 5000,
      total: 1
  ),
  PesananItem(
      name: "Siomay",
      price: 10000,
      total: 1
  ),
];


