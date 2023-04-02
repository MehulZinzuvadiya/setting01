import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:setting01/setting/provider/setting_provider.dart';

class HomeSCreen extends StatefulWidget {
  const HomeSCreen({Key? key}) : super(key: key);

  @override
  State<HomeSCreen> createState() => _HomeSCreenState();
}

class _HomeSCreenState extends State<HomeSCreen> {
  SettingProvider? providerT, providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<SettingProvider>(context, listen: true);
    providerF = Provider.of<SettingProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade600,
        elevation: 0,
        title: Text("Settings UI",
            style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Common",
                  style: GoogleFonts.lato(
                    color: Colors.deepOrange.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text(
                  "Language",
                  style: GoogleFonts.lato(color: Colors.black, fontSize: 15),
                ),
                subtitle: Text(
                  "English",
                  style: GoogleFonts.lato(fontSize: 13),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey.shade500,
                ),
              ),
              ListTile(
                leading: Icon(Icons.cloud_queue),
                title: Text(
                  "Environment",
                  style: GoogleFonts.lato(color: Colors.black, fontSize: 15),
                ),
                subtitle: Text(
                  "Production",
                  style: GoogleFonts.lato(fontSize: 13),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Account",
                  style: GoogleFonts.lato(
                    color: Colors.deepOrange.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  "Phone number",
                  style: GoogleFonts.lato(color: Colors.black, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey.shade500,
                ),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text(
                  "Email",
                  style: GoogleFonts.lato(color: Colors.black, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey.shade500,
                ),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  "Sign out",
                  style: GoogleFonts.lato(color: Colors.black, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey.shade500,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Security",
                  style: GoogleFonts.lato(
                    color: Colors.deepOrange.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.phonelink_lock_outlined),
                title: Text(
                  "Lock app in background",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 15),
                ),
                trailing: Switch(
                  value: providerF!.ch1,
                  activeColor: Colors.deepOrange,
                  onChanged: (value) {
                    providerT!.onOff1(value);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey.shade500,
                ),
              ),
              ListTile(
                leading: Icon(Icons.fingerprint),
                title: Text(
                  "Use Fingerprint",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 15),
                ),
                trailing: Switch(
                  value: providerF!.ch2,
                  activeColor: Colors.deepOrange,
                  onChanged: (value) {
                    providerT!.onOff2(value);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey.shade500,
                ),
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text(
                  "Change password",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 15),
                ),
                trailing: Switch(
                  value: providerF!.ch3,
                  activeColor: Colors.deepOrange,
                  onChanged: (value) {
                    providerT!.onOff3(value);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Misc",
                  style: GoogleFonts.lato(
                    color: Colors.deepOrange.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
