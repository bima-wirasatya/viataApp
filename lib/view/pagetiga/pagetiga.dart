import 'package:flutter/material.dart';

import '../theme.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({Key? key}) : super(key: key);
//
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


                    Text(
                      'Royal Canin Hair & Skin (Rp114.000)',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Makanan kucing jenis Royal Canin memang sudah dikenal di pasaran dengan kualitas dan harganya yang mahal, Royal Canin Hair & Skin digunakan untuk menghindari kucing dari masalah bulu yang rontok. Selain itu, produk yang berasal dari Perancis ini bisa melebatkan dan memanjangkan bulu kucing, baik kucing domestik maupun ras tertentu.',
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
                      'Makanan Felibite (Rp30.000)',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Felibite dibuat dengan nutrisi yang seimbang sehingga stamina dan kekebalan tubuh kucing tetap terjaga. Terdapat pula vitamin Omega 3 dan Omega 6 yang bisa merangsang kesehatan bulu, taurin untuk kesehatan mata, dan yucca extract untuk mengurangi bau pada kotoran.',
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
                      'Makanan Me-O (Rp48.000)',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Me-O cat food dry  memiliki berbagai varian rasa. Untuk kucing dewasa mulai dari, sapi, ayam, ikan buntal tuna, dan sayuran. Sedangkan untuk anak kucing terdapat rasa seafood. Produk Me-O mengandung vitamin C, vitamin D, omega 3 dan 6, fosfor, dan kalsium.',
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
