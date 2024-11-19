import 'package:flutter/material.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book Details'
          ),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);

          }, icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'bookImage', 
              child: Image.asset('assets/images/bookex.png'),
            ),
            const SizedBox(height: 20),
            const Text('The Psychology of Money'),
            const Text('Marwan Ghandour'),
            const Text('\$43.53'),
          ],
        ),
      ),
    );
  }
}
