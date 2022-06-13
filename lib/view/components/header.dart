import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viata/view/theme.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  void showLogoutDialog(BuildContext context) {
    Widget cancelButton = TextButton(
      child: const Text(
        "Batal",
        style: TextStyle(color: Colors.indigo),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: const Text(
        "Ya",
        style: TextStyle(color: Colors.indigo),
      ),
      onPressed: () async {
        await FirebaseAuth.instance.signOut().then((value) {
          Navigator.pop(context);
          Navigator.pushReplacementNamed(context, 'login');
        });
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Log Out"),
      content: const Text("Apakah anda yakin ingin keluar dari aplikasi?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              backgroundColor: MaterialStateProperty.all(primaryColor)),
          onPressed: () => showLogoutDialog(context),
          child: const Text('Log Out'),
        ),
        Text(
          'Hi, ${FirebaseAuth.instance.currentUser?.displayName}!',
          style: GoogleFonts.poppins(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
