import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Apps'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildIconButton(
              context, Icons.calculate, 'Calculator', '/calculator'),
          _buildIconButton(context, Icons.access_time, 'Clock', '/clock'),
          _buildIconButton(context, Icons.code, 'Morse Code', '/morsecode'),
        ],
      ),
    );
  }

  Widget _buildIconButton(
      BuildContext context, IconData icon, String label, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 50),
          const SizedBox(height: 10),
          Text(label, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
