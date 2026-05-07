import 'package:flutter/material.dart';

class SubjectChatPage extends StatelessWidget {
  const SubjectChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat de Materia'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat, size: 80),
            SizedBox(height: 20),
            Text(
              'Pantalla de Chat',
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
