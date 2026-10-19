import 'package:flutter/material.dart';

class GlobalappbarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  const GlobalappbarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Pisbok"),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
