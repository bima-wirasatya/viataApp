import 'package:flutter/material.dart';

import '../theme.dart';

class PageDua extends StatelessWidget {
  const PageDua({Key? key}) : super(key: key);

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
              SizedBox(
                width: defaultMargin,
              ),

              //Satu
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
//

                    Text(
                      'Kanker',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Penyakit kanker pada kucing pun juga memiliki berbagai jenis tergantung pada satu area saja atau sudah menyebar ke seluruh tubuh. Jenis kanker yang terjadi pada kucing yaitu kanker kulit dan Lymphosarcoma atau limfoma (LSA).',
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
                      'Diabetes',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Diabetes pada kucing adalah penyakit yang disebabkan oleh kekurangan hormon insulin atau tidak adanya respons memadai terhadap insulin. Umumnya diabetes terjadi setelah kucing mengonsumsi makanan tertentu. Karena kurangnya insulin, sistem pencernaan tidak bisa memecah makanan menjadi berbagai komponen, termasuk glukosa yang dibawa ke setiap sel dalam tubuh melalui aliran darah. ',
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
                      'Cacing hati',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Penyakit satu ini ditularkan melalui nyamuk yang sudah terinfeksi. Heartworm semakin dikenal sebagai penyebab utama masalah kesehatan pada kucing domestik. Penyakit ini menyebabkan timbulnya sakit pada paru-paru kucing. ',
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
