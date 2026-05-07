import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubjectDetailPage extends StatelessWidget {
  final String id;

  const SubjectDetailPage({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle de Materia'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Materia seleccionada: $id',
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.push('/subject-chat');
              },
              child: const Text('Abrir Chat'),
            )
          ],
        ),
      ),
    );
  }
}
