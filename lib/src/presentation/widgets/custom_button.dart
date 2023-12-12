import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:study/src/core/routes/routes.gr.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.router.push(
          const PerfilRoute(),
        );
      },
      child: const Text('Navegar'),
    );
  }
}
