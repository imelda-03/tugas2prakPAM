import 'package:flutter/material.dart';
import 'package:tugas2prak/api_data_source.dart';
import 'package:tugas2prak/usermodel.dart';

class DetailUserPage extends StatelessWidget {
  final Data userData;

  DetailUserPage({required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Detail'),
      ),
      body: _buildDetailUserBody(),
    );
  }

  Widget _buildDetailUserBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Mengatur posisi secara horizontal menjadi tengah
        children: [
          Center(
            child: Image.network(userData.avatar!),
          ),
          SizedBox(height: 16),
          Text('${userData.firstName} ${userData.lastName}'),
          Text('${userData.email}'),
          // Tambahkan detail pengguna lainnya jika diperlukan
        ],
      ),
    );
  }
}