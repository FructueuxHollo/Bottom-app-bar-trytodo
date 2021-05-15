import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 40,
        ),
        //Non vous ne pouvez pas couper la photo comme ça
        //Essayer un CircleAvatar
        //Décommentez le bloc en dessous et voyez; vous pouvez aussi utiliser le widget ClipRRect
        //Je vous laisse le soin de rechercher...

        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/profile.jpg',
          ),
          radius: 50.0,
        ),

        /* Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            width: 100,
            height: 100,
            child: Image.asset('assets/images/profile.jpg'),
          ), */
        SizedBox(
          height: 5,
        ),
        Text(
          'David Jerome',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          'jerome@gmail.com',
          style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
        ),
        SizedBox(
          height: 15,
        ),

        //Bien
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Profil(
              path: 'assets/images/file.png',
              ptext: 'Passenger\nDocument',
              space: 10,
            ),
            Profil(
              path: 'assets/images/cloche.png',
              ptext: 'Fight price\n  tracking',
              space: 10,
            ),
            Profil(
              path: 'assets/images/help.png',
              ptext: '  Help\nCenter',
              space: 10,
            )
          ],
        ),

        SizedBox(
          height: 15,
        ),

        //Ce bloc ci occupe tout le reste de l'espace disponible sur l'écran
        //Donc un widget Expanded
        //Je mets le widget je vous réajuster la disposition des widget pour aérer votre UI

        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Settings',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                        alignment: Alignment.bottomLeft,
                        height: 20,
                        child: Image.asset('assets/images/phone.png')),
                    SizedBox(
                      width: 10,
                    ),
                    Text('phone'),
                    Spacer(),
                    Text('add number')
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                        alignment: Alignment.bottomLeft,
                        width: 20,
                        height: 20,
                        child: Image.asset('assets/images/globe.png')),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Languages'),
                    Spacer(),
                    Text('English(eng)')
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                        alignment: Alignment.bottomLeft,
                        width: 20,
                        height: 20,
                        child: Image.asset('assets/images/money.png')),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Currency'),
                    Spacer(),
                    Text('US Dollar (S)')
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                        alignment: Alignment.bottomLeft,
                        width: 20,
                        height: 20,
                        child: Image.asset('assets/images/map-pin.png')),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Distance Units'),
                    Spacer(),
                    Text('Mile')
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                        alignment: Alignment.bottomLeft,
                        width: 20,
                        height: 20,
                        child: Image.asset('assets/images/house-simple.png')),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Country/Region'),
                    Spacer(),
                    Text('Canada')
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                        alignment: Alignment.bottomLeft,
                        width: 20,
                        height: 20,
                        child: Image.asset('assets/images/cloche.png')),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Notifications'),
                    Spacer(),
                    Text('3')
                  ],
                ),
              ],
            ),
          ),
        ),
        Divider(
          height: 0,
        )
      ],
    );
  }
}

class Profil extends StatelessWidget {
  final String path, ptext;
  final double space;
  const Profil({
    Key key,
    this.path,
    this.ptext,
    this.space,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: Image.asset(path),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: space,
        ),
        Text(
          ptext,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    );
  }
}
