import 'package:flutter/material.dart';

//import 'package:go_router/go_router.dart';

class ExampleNavigatioonArgument extends StatelessWidget {
  const ExampleNavigatioonArgument({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              // context.push('/');
            },
            icon: const Icon(Icons.bolt)),
      ),
      body: const Center(
        child: Text('Argumento'),
      ),
    );
  }
}
