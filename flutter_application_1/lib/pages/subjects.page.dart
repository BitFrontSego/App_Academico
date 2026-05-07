import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubjectsPage extends StatelessWidget {
  const SubjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final materias = [
      'Programación',
      'Matemáticas',
      'Bases de Datos',
      'Redes',
      'Diseño Web'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Materias'),
      ),
      body: ListView.builder(
        itemCount: materias.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(materias[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              context.push('/subject/$index');
            },
          );
        },
      ),
    );
  }
}
