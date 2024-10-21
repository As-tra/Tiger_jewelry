import 'package:flutter/material.dart';
import 'package:jewelry/models/boutique_model.dart';

class BoutiquesListView extends StatelessWidget {
  const BoutiquesListView({super.key});

  static List<BoutiqueModel> items = [
  
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {},
    );
  }
}
