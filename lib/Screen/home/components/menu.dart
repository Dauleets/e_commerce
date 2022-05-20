import 'package:flutter/material.dart';
import 'package:shop2/constans.dart';


class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
       children:  <Widget>[
         DrawerHeader(
           margin: EdgeInsets.zero,
           padding: EdgeInsets.zero,
           child: UserAccountsDrawerHeader(
             currentAccountPicture: Container(
                child: Image.asset("assets/images/person.png", color: kPrimaryColor,),
                  decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.white,
               )
             ),
             decoration: BoxDecoration(
               color: kPrimaryColor,
             ),
             accountName: Text("Zhunussov daulet"),
             accountEmail: Text('Dauleets@gmail.com'),
           )
         ),
        ListTile(
          title: Text("Мои заказы"),
          leading: Icon(Icons.shopping_basket_outlined),
          onTap: (){},
        ),
        ListTile(
          title: Text("Мои Акций"),
          leading: Icon(Icons.report),
          onTap: (){},
        ),
        ListTile(
          title: Text("Поддержка"),
          leading: Icon(Icons.loyalty),
          onTap: (){},
        ),     
        ListTile(
          title: Text("О приложений"),
          leading: Icon(Icons.more),
          onTap: (){},  
        ),
       ],
    );
  }
}