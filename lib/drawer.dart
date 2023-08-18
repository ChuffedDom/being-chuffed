import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text(
              "Pages",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ListTile(
            title: Text("Home"),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
          ),
          ExpansionTile(
            title: const Text("Fundamentals"),
            children: [
              ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("Scope"),
                ),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/scope', (route) => false);
                },
              ),
              ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("Meetings"),
                ),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/meetings', (route) => false);
                },
              ),
            ],
          ),
          ExpansionTile(
            title: const Text("Product"),
            children: [
              ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("Persona"),
                ),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/persona', (route) => false);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
