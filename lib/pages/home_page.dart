import 'package:flutter/material.dart';

import 'menu_page.dart';
class HomePage extends StatelessWidget {

  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenue sur Miam"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children:  [
            Image.asset("assets/images/home.png"),
            const Text("Bienvenue sur l'application",
              style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Poppins'
              ),
            ),
            Padding(padding: EdgeInsets.only(top:20)),
            ElevatedButton.icon(
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.green)
              ),
              onPressed:(){
                Navigator.push(context,
                    PageRouteBuilder(
                        pageBuilder:(_, __, ___)=> MenuPage()
                    )
                );
              },
              label: const Text("Générer votre menu",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              icon: Icon(Icons.calendar_month),
            )
          ],
        ),
      ),
    );
  }
}

