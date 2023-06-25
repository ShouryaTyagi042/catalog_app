import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://lh3.googleusercontent.com/pw/AJFCJaVzOG8ctIYt0HbCPLU8jGY8WmnHC7vT7_ny55YQ1qp66hSt7B_EFfG0WSAv-1oC2j6TiB1u5eRm94PYFu_-OLZKx45wXK1jUrXNlgu_JX6KbTiV13SdP6D_0o8AisA-tAgCXyJrsCeIKCGv6z8pMjM47aV8voHWplk81zckChLvXSkxADivF_untgmmLiLgAVrIBM8EsWk5dX0c8xcVwZ-zt4WXYFnQhz-nPK2OBFRz8vHBUdxItIghGy2ZwjjyOaL1UZiH7sL34e6ljOUhVGFMPlSC28Vhgc4KA-Tnx9Ypjh0W4Yd7xi04YGoJldJ8pl8FpFv-UErKgBQWTeyTnmg5GKtQFZozgQxCpzlLQZyzOeEQXJuUbAPddB2JmnOQTWmKNTLBPKh-nPhgwpYz2-vTQz_yFWfaaegiOntqOHtnr5jKIa_BvRHbxSX2bitwPYMtUcXBK6_GQJeA6ZrBYYcLmHXZumESss0o2Za9UuVqcbJ8JWhXJi5jy9LYqAhSLDQiREcwHZigxCTCr10yuP7JKkF2e58Zcf2FLRP4cpVEkIRG51_l7TSwl4EgcJ-NNUoBbC6zrSJOX9A-zRpVEHlph17Tvt0mugysz4ZOC2t7gtOiPK0qGaGpkoaxisMMCmZgnFi8wAZuuyxsHY0Ejbc5Z8hGZPCp8nc9mttfASrBz2W0v5O3te0epvFSfCyz03VwTJmVVoLzoK-i1UNj0zgz4B8ndYbfcCL9gibzz0jGhffnzQRvS3lWho3qr6xx_bo1DneS_nXQJ5I2_GYWL6qGj8YPdxnc1CcNsTzIdP7XFI3OQrh7IPSGJlDpgUMtfMZMQAtaFMkOAdiags7k0daKDkciwnCtNdy7auL2cdHmjqSFCgVObjxdP-mqZ-tWLVZ8Di1mKyNhqtftWvU1wJale61ohe3jBJYL6X0-ScLjj_2f62sGvj-bLqB-=w727-h969-s-no?authuser=0";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Shourya Tyagi"),
                  accountEmail: Text("shourya.bond007@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                "Mail to me",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
