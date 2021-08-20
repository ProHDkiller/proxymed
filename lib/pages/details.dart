import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  String text = "You booked with ProxyMed Réservation d'un rendez-vous pour consultation en ligne Wednesday, Aug 11, 2021 at 9:00 am 30 minutes En ligne Join with Zoom (GMT+2:00) - Europe/Zurich Avec PoxyMed, vos patients sont sous la vue et sous la main !!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x1A44abbb),
      body: Container(

        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(40)),
        margin: EdgeInsets.symmetric(vertical: 120,horizontal: 100),
        padding: EdgeInsets.symmetric(vertical: 90,horizontal: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8,bottom:18.0),
            child: Text('Meeting Details',style: GoogleFonts.poppins(fontSize: 41,fontWeight: FontWeight.w200,color: Color(0xFFE76880)),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Row(
              children: [
                Text('We sent a copy of the details to',style: GoogleFonts.lato(fontSize: 28),),
                Text('proxymed.info.ligne@gmail.com',style: GoogleFonts.lato(fontSize: 28,color: Color(0xFFE76880))),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text('Nom du patient;',style: GoogleFonts.poppins(fontSize: 41,fontWeight: FontWeight.w200),),
              Text('Foulen Ben Foulen',style: GoogleFonts.poppins(fontSize: 41,fontWeight: FontWeight.w200,color:Color(0x9A44abbb) )),
            ],),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("You booked with ProxyMed \nRéservation d'un rendez-vous "
                "pour consultation en ligne \nWednesday, Aug 11, 2021 at 9:00 am \n30 minutes "
                "En ligne \nJoin with Zoom\n (GMT+2:00) - Europe/Zurich \nAvec PoxyMed,"
                " vos patients sont sous la vue et sous la main !!",style: GoogleFonts.lato(fontSize: 28)),
          ),

          Row(mainAxisAlignment: MainAxisAlignment.end,children: [
            MaterialButton(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),color: Color(0xBB43ABBB),onPressed: (){},child: Text('Reprogrammer'), height: 50,minWidth: 150,),
            Padding(
              padding: const EdgeInsets.only(right: 38.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: MaterialButton(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),color: Color(0xBB43ABBB),onPressed: (){},child: Text('Reprogrammer'), height: 50,minWidth: 150,),
              ),
            ),

          ],),

        ],
      ),),
    );
  }
}
