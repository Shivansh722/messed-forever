import 'package:flutter/material.dart';

class HostelRecipe extends StatefulWidget {
  const HostelRecipe({super.key});
  static const String id = 'hostel_recipe';

  @override
  State<HostelRecipe> createState() => _HostelRecipeState();
}

class _HostelRecipeState extends State<HostelRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Text('Hostel Recipe Screen'),
      ),
    );
  }
}
