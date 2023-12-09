import 'package:flutter/material.dart';

import 'components/body.dart';
import 'components/build_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(true),
      body: const Body(),
    );
  }
}
