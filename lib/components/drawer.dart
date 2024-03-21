import 'package:blend_bristo/pages/settings.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout(){
    //get auth service
    //final auth = AuthService();
    //auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //logo
          Column(
            children: [
              DrawerHeader(child:
                Image.asset(
                  'lib/images/LogoColored.png',
                  width: 320,
                )),
              
              //home list title
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text("Home", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                  leading: Icon(Icons.home, color: Theme.of(context).colorScheme.primary),
                  onTap: (){
                    //pop drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              
              //settings list title
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text("Settings", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                  leading: Icon(Icons.settings, color: Theme.of(context).colorScheme.primary),
                  onTap: (){
                    //pop drawer
                    Navigator.pop(context);

                    //navigate to settings page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage(),)
                    );
                  },
                ),
              ),
            ],
          ),

          //logout list tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25),
            child: ListTile(
              title: Text("Logout", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
              leading: Icon(Icons.logout, color: Theme.of(context).colorScheme.primary),
              onTap: logout,
            ),
          )
        ],
      ),
    );
  }
}