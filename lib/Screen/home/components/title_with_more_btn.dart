import 'package:flutter/material.dart';

import '../../../constans.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,  required this.title,  required this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCoustomUndeline(text: title),
          const Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            color: kPrimaryColor,
            onPressed: (){}, 
            child: const Text(
              "ЕЩЁ",
              style: TextStyle(
                color: Colors.white
              ),
            ))
        ],
      ),
    );
  }
}

class TitleWithCoustomUndeline extends StatelessWidget {
  const TitleWithCoustomUndeline({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
             "Рекомендаций",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(left: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.07),
            ),
          ),
        ],
      )
    );
  }
}

class TitleWithMoreBtns extends StatelessWidget {
  const TitleWithMoreBtns({
    Key? key,  required this.title,  required this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCoustomUndelines(text: title),
          const Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            color: kPrimaryColor,
            onPressed: (){}, 
            child: const Text(
              "ЕЩЁ",
              style: TextStyle(
                color: Colors.white
              ),
            ))
        ],
      ),
    );
  }
}

class TitleWithCoustomUndelines extends StatelessWidget {
  const TitleWithCoustomUndelines({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
             "Акций",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(left: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.07),
            ),
          ),
        ],
      )
    );
  }
}

class TitleWithMoreBtnsAdress extends StatelessWidget {
  const TitleWithMoreBtnsAdress({
    Key? key,  required this.title,  required this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10
      ),
      child: Row(
        children: [
          TitleWithCoustomUndelinesAdress(text: title),
        ]
      ),
    );
  }
}

class TitleWithCoustomUndelinesAdress extends StatelessWidget {
  const TitleWithCoustomUndelinesAdress({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          Text(
           "Привезти еду сюда?",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(left: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.07),
            ),
          ),
        ],
      )
    );
  }
}



