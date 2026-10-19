import 'package:flutter/material.dart';

class Prelim extends StatelessWidget {
  const Prelim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Prelim Exam',
              style: TextStyle(
                fontSize: 22,
                color: Colors.lightBlue,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'John Carl V. Babiera',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: 140,
              height: 140,
              color: Color(0xff61b530),
              child: const Center(
                child: Text(
                  'BOX 1',
                  style: TextStyle(color: Color(0xff00ffc9)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 140,
                  height: 140,
                  color: Color(0xff61b530),
                  child: const Center(
                    child: Text(
                      'BOX 2',
                      style: TextStyle(color: Color(0xff00ffc9)),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  width: 140,
                  height: 140,
                  color: Color(0xff61b530),
                  child: const Center(
                    child: Text(
                      'BOX 3',
                      style: TextStyle(color: Color(0xff00ffc9)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
