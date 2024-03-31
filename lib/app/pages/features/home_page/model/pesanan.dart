class Pesanan {
  final String name;
  final List<PesananItem> items;


  Pesanan({
    required this.name,
    required this.items
  });

}

class PesananItem {
  final String name;
  final int price, total;

  PesananItem({
    required this.name,
    required this.price,
    required this.total
  });
}