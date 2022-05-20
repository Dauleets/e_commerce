import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shop2/Screen/home/components/recomend_plant.dart';
import 'package:shop2/Screen/home/components/title_with_more_btn.dart';
import 'package:shop2/constans.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override   
  Widget build(BuildContext context){

    Size size  = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          AdressHomeContainer(),
            

            TitleWithMoreBtn(
              title: "Рекомендаций",
              press: (){},
            ),



              Padding(
                padding: const EdgeInsets.only(right: kDefaultPadding),
                child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "чизбургер",
            country: "combo",
            price: 1290,
            press: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) =>  DetailsScreen(),
                //   ),
                // );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "твистер",
            country: "combo",
            price: 1390,
            press: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) =>  DetailsScreen(),
                //   ),
                // );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "pizza",
            country: "one-dollar",
            price: 590,
            press: () {},
          ),
          RecomendPlantCard(
            image: "assets/images/img_4.png",
            title: "суши",
            country: "set",
            price: 5790,
            press: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) =>  DetailsScreen(),
                //   ),
                // );
            },
          )
          
          ],
      ),
    ),
              ),



            TitleWithMoreBtns( 
              title: "Featured Plants",
              press: (){},
            ),
              FeaturedPlants(),
              SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}

class AdressHomeContainer extends StatelessWidget {
  const AdressHomeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: kDefaultPadding,
        left: kDefaultPadding,
        right: kDefaultPadding
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            
            blurRadius: 20,
            color: Colors.black.withOpacity(0.25)
          )
        ]
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TitleWithMoreBtnsAdress(title: "Превезти еду сюда?",press: (){},),
          ),
          FlatButton(
            onPressed: (){
            
            },
            child: Container(
             
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: 10
              ),
              decoration: BoxDecoration(
                 color: kPrimaryColor,
             
                border: Border.all(width: 2, color: kPrimaryColor),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Выбрать адресс",
                      style: TextStyle(color: Colors.white
                  )
                  ),
                ),
               Icon(Icons.keyboard_arrow_down, color: Colors.white,)
              ],
        ),
            ),
          ),        
        ],
      ),
    );
  }
}





