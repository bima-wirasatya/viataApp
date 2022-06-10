import 'package:flutter/material.dart';

import '../theme.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget Isi() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          //supaya tidak over flow
          scrollDirection: Axis.vertical, //membuat scroll ke kanan
          child: Column(
            children: [

              //Copy dah
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                width: 300,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Column(
                  children: [

                    Text(
                      'Americans Shorthair',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Ciri-Ciri: badan kuat dan bulu coklat Cara Perawatan: Beri Vitamin dan menyisir bulu',
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                  ],
                ),
              ),

              //Copy dah

              SizedBox(
                height: 20,
              ),


              Container(
                width: 300,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Column(
                  children: [

                    Text(
                      'Maincoons',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Ciri-Ciri: Tubuh yang besar Cara Perawatan: Menyisir bulunya',
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                  ],
                ),
              ),


              SizedBox(
                height: 20,
              ),

              Container(
                width: 300,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Column(
                  children: [

                    Text(
                      'Kucing',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Ciri-Ciri: Berbulu lembut Cara Perawatan: merawat bulu dan memberi vitamin',
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                  ],
                ),
              ),



              SizedBox(
                height: 20,
              ),

              Container(
                width: 300,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Column(
                  children: [

                    Text(
                      'Sphynx',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Ciri-Ciri: Tidak memiliki bulu Cara Perawatan: Beri Vitamin dan Makanan Dryfood',
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      );
    }

    return ListView(
      children: [Isi()],
    );
  }
}
