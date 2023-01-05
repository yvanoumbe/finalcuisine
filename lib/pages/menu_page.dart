import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Votre menu de la semaine"),
      ),
      body: Center(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Image.asset("assets/images/Burger.jpg"),
                title: Text('Mardi (Crepe maison)'),
                subtitle: Text('pain , ognon , tomate , salade , schédar , cornichon'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("assets/images/crepe.jpg"),
                title: Text('Mardi (Crepe maison)'),
                subtitle: Text('oeufs , farine , sel , lait , beurre , sucre'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("assets/images/pizza.jpg"),
                title: Text('Mercredi (Pizza)'),
                subtitle: Text('patte , viande hachée , tomate , ognion'),
                trailing: Icon(Icons.more_vert),
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.green)
              ),
              onPressed:(){
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder:(_, __, ___) => ListeCourses()
                )
                );
              },
              child: Text("Liste des courses",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            ),
          ],


        ),


      ),

    );
  }

}

class ListeCourses extends StatelessWidget {
  const ListeCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
