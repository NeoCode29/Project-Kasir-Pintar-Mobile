import 'package:flutter/material.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/cash-machine.png',
                  height: 50,
                ),
                SizedBox(width: 10),
                Text(
                  'Kasir Pintar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          _buildMenuItem(
            icon: Icons.dashboard,
            title: 'Dashboard',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'halaman dashboard');
            },
          ),
          _buildMenuItem(
            icon: Icons.shopping_cart,
            title: 'Transaksi',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'halaman transaksi');
            },
          ),
          _buildMenuItem(
            icon: Icons.inventory,
            title: 'Produk',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'halaman product');
            },
          ),
          _buildMenuItem(
            icon: Icons.people,
            title: 'Pelanggan dan Suplier',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'halaman pelanggan-suplier');
            },
          ),
          _buildMenuItem(
            icon: Icons.assessment,
            title: 'Laporan',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'halaman laporan');
            },
          ),
          _buildMenuItem(
            icon: Icons.manage_accounts,
            title: 'Manajmen User',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'halaman manajemen user');
            },
          ),
          _buildMenuItem(
            icon: Icons.settings,
            title: 'Pengaturan',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'halaman ganti password');
            },
          ),
          _buildMenuItem(
            icon: Icons.logout,
            title: 'Keluar', 
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                'halaman login'
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}