import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  BottomNav(this.page);
  int page;
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  getPage(index) {
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/');
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, '/profile');
    } else if (index == 2) {
      Navigator.pushReplacementNamed(context, '/movie');
    } else if (index == 3) {
      Navigator.pushReplacementNamed(context, '/transaksi', arguments: [
        {
          "id": 1,
          "nama_produk": "meja",
          "harga": 5000,
        },
        {
          "id": 2,
          "nama_produk": "kursi",
          "harga": 10000,
        }
      ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      currentIndex: widget.page,
      onTap: getPage,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_copy),
          label: "Movie",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Trans",
        ),
      ],
    );
  }
}
