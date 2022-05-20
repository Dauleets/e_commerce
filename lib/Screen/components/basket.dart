import 'package:flutter/material.dart';
import 'package:shop2/constans.dart';

class BasketPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(
          color: kBackgroundColor,
          
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),

            CardHistoryBasket(
              text: "История заказов",
              icons: Icon(Icons.lock_clock, size: 30,color: kPrimaryColor),
              ),
    
              CardHistoryBasket(
              text: "Сохраненные",
              icons: Icon(Icons.thumb_up, size: 30,color: kPrimaryColor,),
              ),
    
              CardHistoryBasket(
              text: "История заказов",
              icons: Icon(Icons.lock_clock, size: 30,color: kPrimaryColor),
              ),
    
              CardHistoryBasket(
              text: "История заказов",
              icons: Icon(Icons.lock_clock, size: 30,color: kPrimaryColor),
              ),
    
          ],
        ),
      ),

      
    );
  }
}

class CardHistoryBasket extends StatelessWidget {
  const CardHistoryBasket({
    Key? key, required this.text,required this.icons,
  }) : super(key: key);

  final String text;
  final Icon icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        right: 40,
        left: 40
      ),
      child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 3,color: kPrimaryColor),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white
      ),
      child: FlatButton(
        onPressed: (){

        },
        child: Padding(
          padding: EdgeInsets.only(
            top: 20,bottom: 20,
        
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
                child: icons),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.headline6,

                ),
              )
              
            ],
          ),
        ),
      ),
      ),
    );
  }
}