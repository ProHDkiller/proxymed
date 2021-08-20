import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashMed extends StatefulWidget {
  const DashMed({Key? key}) : super(key: key);

  @override
  _DashMedState createState() => _DashMedState();
}

class _DashMedState extends State<DashMed> {
  TextStyle titleStyle = GoogleFonts.rajdhani(fontSize: 24,color: Colors.black,letterSpacing: 0.75,fontWeight: FontWeight.w600);
  TextStyle secondStyle = GoogleFonts.rajdhani(fontSize: 14,letterSpacing: 0.44,color: Color(0xFFE76880));
  TextStyle numberStyle = GoogleFonts.rajdhani(fontSize: 74,color: Colors.black,letterSpacing: 2.31,fontWeight: FontWeight.w600);
  TextStyle descStyle = GoogleFonts.rajdhani(fontSize: 23,fontWeight: FontWeight.w400);
  TextStyle headerStyle = GoogleFonts.poppins(fontSize: 21,color: Color(0xFF43ABBB));
  TextStyle lastStyle = GoogleFonts.roboto(fontSize: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x1A44abbb),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                  alignment: WrapAlignment.spaceAround,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      height: 200,
                      width: 400,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total Appointments',style: titleStyle,),
                            Divider(
                              indent: 40,
                              endIndent: 40,
                              height: 4,
                            ),
                            Text('Today',style: secondStyle),
                            Text('9',style: numberStyle,),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 200,
                      width: 380,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),),
                      child: Container(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 18),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total Appointments',style: titleStyle),
                            Container(
                              color: Colors.black,
                              width: 40,
                              height: 4,
                            ),
                            Text('This week',style: secondStyle),
                            Text('50',style: numberStyle),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 200,
                      width: 380,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 18),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total Appointments',style: titleStyle),
                            Container(
                              color: Colors.black,
                              width: 40,
                              height: 4,
                            ),
                            Text('This month',style: secondStyle,),
                            Text('120',style: numberStyle),
                          ],
                        ),
                      ),
                    ),
                  ]),
              Wrap(alignment: WrapAlignment.center, children: [
                Container(
                  margin: EdgeInsets.all(20),
                  height: 600,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Next patient',style: titleStyle),
                      ),
                      Container(
                        color: Colors.black,
                        width: 40,
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: [
                            Icon(Icons.camera),
                            Column(

                              children: [
                                Text('Lindsey Rivard',style: GoogleFonts.roboto(fontSize: 28,letterSpacing: 0.88),),
                                RichText(text: TextSpan(text: 'coming in ',style: GoogleFonts.roboto(fontSize: 14,color: Color(0xFFE76880)),children: [TextSpan(text: '15 MINUTES',style:GoogleFonts.roboto(fontSize: 20,color: Color(0xFFE76880)) )]),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Gender: Female',style: descStyle,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Blood Type: AB Positive',style: descStyle),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Phone number : 12345678',style: descStyle),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Email: foulen@gmail.com',style: descStyle),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 560,
                  width: 820,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:8.0,bottom: 40),
                        child: Text("today's appointments",style: titleStyle),
                      ),
                      Container(
                        color: Colors.grey,
                        width: 400,
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Consultation physique',style: headerStyle,),
                          Text('Téléconsultation',style: headerStyle),
                          Text('Explorations',style: headerStyle),
                        ],
                      ),
                      Container(margin: EdgeInsets.symmetric(vertical: 40,horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Nom du patient',style: lastStyle,),
                            Text('Time',style: lastStyle),
                            Text("Doctor's Name",style: lastStyle),
                          ],
                        ),
                      ),
                      Container(margin: EdgeInsets.symmetric(vertical: 40,horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Lorem Ipsum Dolor',style: lastStyle),
                            Text('11:00',style: lastStyle),
                            Text('Text Placeholder here',style: lastStyle),
                          ],
                        ),
                      ),
                      Container(margin: EdgeInsets.symmetric(vertical: 40,horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Lorem Ipsum Dolor',style: lastStyle),
                            Text('11:00',style: lastStyle),
                            Text('Text Placeholder here',style: lastStyle),
                          ],
                        ),
                      ),
                      Container(margin: EdgeInsets.symmetric(vertical: 40,horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Lorem Ipsum Dolor',style: lastStyle),
                            Text('11:00',style: lastStyle),
                            Text('Text Placeholder here',style: lastStyle),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
