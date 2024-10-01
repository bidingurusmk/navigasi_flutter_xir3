import 'package:flutter/material.dart';
import '../widgets/bottom_nav.dart';

class TransaksiView extends StatelessWidget {
  const TransaksiView({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
      body: Column(
        children: [
          Text("halaman Transaksi"),
          Text("ID : " + arg[0]["id"].toString()),
          Text("Nama Produk : ${arg[0]["nama_produk"]}"),
          Text("Harga : ${arg[0]["harga"]}"),
        ],
      ),
      bottomNavigationBar: BottomNav(3),
    );
  }
}
