import 'package:blend_bristo/themes/themeProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.primary,
          centerTitle: true,
        ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.all(25),
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //dark mode
            Text("Dark Mode"),
        
            //switch
            CupertinoSwitch(
              value: Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
              onChanged: (value) =>
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
              activeColor: Theme.of(context).colorScheme.primary,
            )
          ],
        ),
      ),
    );
  }
}