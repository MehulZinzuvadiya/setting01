import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../setting/provider/setting_provider.dart';

class Isetting extends StatefulWidget {
  const Isetting({Key? key}) : super(key: key);

  @override
  State<Isetting> createState() => _IsettingState();
}

class _IsettingState extends State<Isetting> {
  SettingProvider? providerT, providerF;
  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<SettingProvider>(context, listen: true);
    providerF = Provider.of<SettingProvider>(context, listen: false);
    return SafeArea(
        child: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text("Settings UI",style: TextStyle(fontSize: 18,color: Colors.black),),
          ),
      backgroundColor: Color(0xffF3EFF9),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.all(18),
              child: Text(
                "Common",
                style: GoogleFonts.lato(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            CupertinoListTile(
              leading: Icon(Icons.language,color: Colors.grey,),
              backgroundColor: Colors.white,
              title: Text(
                "Language",
                style: GoogleFonts.lato(color: Colors.black, fontSize: 15),
              ),
              trailing: Row(
                children: [
                  Text("English",style: GoogleFonts.poppins(fontSize: 15,color: Colors.grey),),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios,size: 14,color: Colors.grey,)
                ],
              ),
            ),
            CupertinoListTile(
              leading: Icon(CupertinoIcons.cloud,color: Colors.grey,),
              backgroundColor: Colors.white,
              title: Text(
                "Environment",
                style: GoogleFonts.lato(color: Colors.black, fontSize: 15),
              ),
              trailing: Row(
                children: [
                  Text("Production",style: GoogleFonts.poppins(fontSize: 15,color: Colors.grey),),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios,size: 14,color: Colors.grey,)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(18),
              child: Text(
                "Account",
                style: GoogleFonts.lato(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            CupertinoListTile(
              backgroundColor: Colors.white,
              leading: Icon(CupertinoIcons.phone,color: Colors.grey,),
              title: Text(
                "Phone number",
                style: GoogleFonts.lato(color: Colors.black, fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 15,color:Colors.grey,),
            ),
            CupertinoListTile(
              backgroundColor: Colors.white,
              leading: Icon(CupertinoIcons.mail,color: Colors.grey,),
              title: Text(
                "Email",
                style: GoogleFonts.lato(color: Colors.black, fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 15,color:Colors.grey,),
            ),
            CupertinoListTile(
              leading: Icon(CupertinoIcons.arrow_right_circle_fill,color: Colors.grey,),
              title: Text(
                "Sign out",
                style: GoogleFonts.lato(color: Colors.black, fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 15,color:Colors.grey,),
              backgroundColor: Colors.white,
            ),
            Container(
              margin: EdgeInsets.all(18),
              child: Text(
                "Security",
                style: GoogleFonts.lato(
                  color:Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            CupertinoListTile(
              backgroundColor: Colors.white,
              leading: Icon(Icons.phonelink_lock,color: Colors.grey,),
              title: Text(
                "Lock app in background",
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 15),
              ),
              trailing: CupertinoSwitch(
                value: providerF!.ch1,
                activeColor: Colors.deepOrange,
                onChanged: (value) {
                  providerT!.onOff1(value);
                },
              ),
            ),
            CupertinoListTile(
              backgroundColor: Colors.white,
              leading: Icon(Icons.fingerprint,color: Colors.grey,),
              title: Text(
                "Use Fingerprint",
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 15),
              ),
              trailing: CupertinoSwitch(
                value: providerF!.ch2,
                activeColor: Colors.deepOrange,
                onChanged: (value) {
                  providerT!.onOff2(value);
                },
              ),
            ),
            CupertinoListTile(
              backgroundColor: Colors.white,
              leading: Icon(CupertinoIcons.lock,color: Colors.grey,),
              title: Text(
                "Change password",
                style: GoogleFonts.poppins(color: Colors.black,fontSize: 15),
              ),
              trailing: CupertinoSwitch(
                value: providerF!.ch3,
                activeColor: Colors.deepOrange,
                onChanged: (value) {
                  providerT!.onOff3(value);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(18),
              child: Text(
                "Misc",
                style: GoogleFonts.lato(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            CupertinoListTile(
              backgroundColor: Colors.white,
              leading: Icon(Icons.save_rounded,color: Colors.grey,),
              title: Text(
                "Terms of Services",
                style: GoogleFonts.lato(color: Colors.black, fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 15,color:Colors.grey,),
            ),
            CupertinoListTile(
              backgroundColor: Colors.white,
              leading: Icon(Icons.picture_as_pdf,color: Colors.grey,),
              title: Text(
                "Open source licenses",
                style: GoogleFonts.lato(color: Colors.black, fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 15,color:Colors.grey,),
            ),
          ],
        ),
      ),
    ));
  }
}
