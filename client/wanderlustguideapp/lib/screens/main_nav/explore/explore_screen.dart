import 'package:flutter/material.dart';
import 'package:wanderlustguideapp/screens/main_nav/explore/components/body.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SafeArea(
        child: Body(),
      ),
    );
  }
}
