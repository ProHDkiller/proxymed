import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String _dropDownValue = 'Patient';
  String _selectedItem = 'Patient';
  bool _isPanDown = false;
  bool _isBackPressedOrTouchedOutSide = false;
  bool _isDropDownOpened = false;
  List<String> selectionList = ['Patient', 'med', 'sant', 'admin'];
  @override
  Widget build(BuildContext context) {
    return
Container(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Expanded(
    child: Padding(
    padding: const EdgeInsets.only(left: 140),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    textDirection: TextDirection.ltr,
    children: [
    Text(
    'Choisir une catégorie pour une meilleure expérience',
    style: GoogleFonts.rajdhani(
    fontSize: 39,
    color: Color(0xFF3169B2),
    fontWeight: FontWeight.w500),
    ),
    Text(
    'Vous êtes...',
    style: GoogleFonts.poppins(
    fontSize: 18, color: Color(0xFFE76880)),
),
Container(
decoration: BoxDecoration(
border: Border.all(
color: Color(0xFF7CC5D0),
width: 2,
),
borderRadius: BorderRadius.circular(30)),
child: AwesomeDropDown(
elevation: 0,
isPanDown: _isPanDown,
isBackPressedOrTouchedOutSide:
_isBackPressedOrTouchedOutSide,
dropDownList: selectionList,
dropDownIcon: Icon(
Icons.arrow_drop_down,
color: Color(0xFF7CC5D0),
size: 40,
),
selectedItem: _selectedItem,
onDropDownItemClick: (selectedItem) {
_selectedItem = selectedItem;
},
dropStateChanged: (isOpened) {
_isDropDownOpened = isOpened;
if (!isOpened) {
_isBackPressedOrTouchedOutSide = false;
}
},
),
),
Padding(
padding: const EdgeInsets.only(top: 20),
child: MaterialButton(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20)),
onPressed: () {},
child: Text(
'Appliquer',
style: GoogleFonts.poppins(
color: Colors.white,
fontWeight: FontWeight.w200),
),
height: 50,
minWidth: 150,
color: Color(0xFFE76880),
),
)
],
),
),
),
Expanded(
child: Container(
child: Image.asset(
'assets/images/Group38.png',
fit: BoxFit.fitWidth,
),
),
),
],
),
);
  }
}
