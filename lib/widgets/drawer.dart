import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://lh3.googleusercontent.com/pw/AJFCJaU20jDpZ0izJ2Bmn8LOtUIPeNts_UT_X-cwXEUJlPVNrrPzRfWNR8bkezfKoyX0IwBkUy0hlO0qnoUUI_IvcpEqr76j0UY2H5SqywVFQGB-Lfq5UeSJRsMQ_DSLCboYDmtDn4TxsR2j6CLLmlUiYYeKx8ZLpTggk9NiXSy61F3hZOuyBX6xckfLkRIO_sEGoo_K2HFxREAuYWZMq7sDQtC0wLn1imPH_pyErzo3kFmjLsuwuNz1ioqH7NJpelbM-EzTTsfcMIigCFDpMK5Wccg52kDL3IS66r9BrPF0RFL_YRy1NGyirFL6dTTKNj3Me0iRpXf-eclRZeZppkwHgxrpGml1jTjHt6NJNs9SZLSUAPz0yRLzEtkcFcafbyTTFpNK-sUL4Sn2xeYp-cX9L36IJtEqgi4Ewtbf2nMsh3oh8nsG38UJUrBwxifncC_sLkDaL__RKKNG70DV_OEo3HmapEyW_Z7pWTzS4ga5r0jP8wEZ6raaVHnsBnngikBDO-R4An2Xr0jmR_XqDqREdBWBwSF0S1MyBL7flALF2NaP5BVxUbhnfBjWQgvsKZM7nvf5zu7FKgalsY-0rDY0OS93gTmDohOoxx0rOb8-Oqz5S5uB99dw7bYKR3ZU_hVRIb2iJSYC4mpW_J_ypcl6VviX0Qlo3nndisPQUAGkHJ-2p20g4Az1aLSt7H3x5hlN7Tf5ZwfcWkBF7GjNQ92BBYHyvNM8jpIjRVx73Mg24-msGXatfymwRuxMiVie4BNEGsdnuKeMoFnY6treMGLuA8CdF1SL9R2jGzxCI4TFgpUsmU8IUOe7NZI6sOkP5AjiNMCevf5qaxEWVZha8WakgHqT5dcoImGvJmHg8roIejdRuKMYuZILDJ20jVdDW9-i0-JCVbJB6dOsWQ0eqKdpPA6rqSOc7TmsrC6CatnZUC18tTK2inpkmKTOxdNb6Q=w750-h1000-s-no?authuser=0";
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
