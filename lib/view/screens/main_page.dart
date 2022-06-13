import 'package:flutter/material.dart';
import 'package:viata/view/screens/screens.dart';
import 'package:viata/view/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 2;

  Widget customBottomNav() {
    return Container(
      decoration: const BoxDecoration(color: Colors.black, boxShadow: [
        BoxShadow(
          color: Colors.black,
          offset: Offset(0.0, 10.0),
        )
      ]),
      child: ClipRRect(
        child: BottomAppBar(
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 5),
                  child: Image.asset(
                    'aset/icon_satu.png',
                    width: 25,
                    color: currentIndex == 0
                        ? primaryColor
                        : const Color(0xff808191),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 5),
                  child: Image.asset(
                    'aset/icon_dua.png',
                    width: 25,
                    color: currentIndex == 1
                        ? primaryColor
                        : const Color(0xff808191), //Ganti warna saat di klik
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 5),
                  child: Image.asset(
                    'aset/icon_tiga.png',
                    width: 18,
                    color: currentIndex == 2
                        ? primaryColor
                        : const Color(0xff808191), //Ganti warna saat di klik
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const Treatments();
      case 1:
        return const Diseases();
      case 2:
        return const Foods();
      default:
        return const Treatments();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //warna background
      bottomNavigationBar: customBottomNav(), //navigasi bawah
      body: body(),
    );
  }
}
