import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final IconData trailing;
  const CustomCard({Key? key, required this.title, required this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
      child: SizedBox(
        height: 70,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Card(
            color: Colors.white54,
            child: ListTile(
              title: Text(
                title,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700),
              ),
              trailing: const Icon(Icons.chevron_right_outlined),
              leading: Icon(trailing),
              style: ListTileStyle.drawer,
            ),
          ),
        ),
      ),
    );
  }
}
