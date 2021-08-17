import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 700) {
        return WideScreen();
      } else {
        return NarrowScreen();
      }
    });
  }
}

class WideScreen extends StatefulWidget {
  const WideScreen({Key? key}) : super(key: key);

  @override
  _WideScreenState createState() => _WideScreenState();
}

class _WideScreenState extends State<WideScreen> {
  List<String> selectionList = ['Patient', 'med', 'sant', 'admin'];
  String _dropDownValue = 'Patient';
  String _selectedItem = 'Patient';
  bool _isPanDown = false;
  bool _isBackPressedOrTouchedOutSide = false;
  bool _isDropDownOpened = false;
  BoxDecoration imageDecor = BoxDecoration(color: Colors.white, boxShadow: [
    BoxShadow(spreadRadius: 3, blurRadius: 9, color: Colors.black12)
  ]);
  TextStyle appBarStyle =
      GoogleFonts.poppins(fontSize: 16, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        leadingWidth: 200,
        backgroundColor: Colors.white,
        leading: Container(
          height: kToolbarHeight,
          width: 200,
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            colorBlendMode: BlendMode.color,
            height: kToolbarHeight - 10,
          ),
          margin: EdgeInsets.only(left: 40),
        ),
        actions: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 250,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text(
                      'Accueil',
                      style: appBarStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text('Espace Patient', style: appBarStyle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text('Espace Medecin', style: appBarStyle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child:
                        Text('Espace Personnels de sante', style: appBarStyle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text('A-propos', style: appBarStyle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text('Contact', style: appBarStyle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text('Contact', style: appBarStyle),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: true,
        children: [
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
          ),
          Container(
            color: Color.fromARGB(102, 236, 236, 236),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'PROXY',
                    style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        fontSize: 72,
                        color: Color(0xFF43ABBB)),
                  ),
                  Text(
                    'MED',
                    style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        fontSize: 72,
                        color: Color(0xFFE76880)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 13.0),
                    child: Transform.rotate(
                      child: Icon(
                        Icons.wifi_rounded,
                        color: Color(0xFF43ABBB),
                        size: 50,
                      ),
                      angle: 0.6,
                    ),
                  ),
                ]),
                Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: Text(
                      'En Chiffres',
                      style: GoogleFonts.poppins(fontSize: 50),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: imageDecor,
                      height: 340,
                      width: 340,
                      margin: EdgeInsets.symmetric(horizontal: 36),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/consulting.svg',
                              color: Color(0xFF7CC5D0)),
                          Text('+50 Spécialités',
                              style: GoogleFonts.poppins(
                                  fontSize: 27, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                    Container(
                      height: 340,
                      width: 340,
                      margin: EdgeInsets.symmetric(horizontal: 36),
                      decoration: imageDecor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/doctor.svg',
                            color: Color(0xFF7CC5D0),
                          ),
                          Text('+2000 Médecins partout \ndans le monde',
                              style: GoogleFonts.poppins(
                                  fontSize: 27, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                    Container(
                      height: 340,
                      width: 340,
                      margin: EdgeInsets.symmetric(horizontal: 36),
                      decoration: imageDecor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/medical.svg',
                              color: Color(0xFF7CC5D0)),
                          Text(
                            '+10000 \n Téléconsultations',
                            style: GoogleFonts.poppins(
                                fontSize: 27, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Row( crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          'REJOINDRE NOTRE EQUIPE',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 44,
                              color: Color(0xFFE76880)),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40,top: 30,bottom: 30),
                        child: Text(
                          'Quid? qui se etiam nunc subsidiis patrimonii aut amicorum liberalitate sustentant, hos perire patiemur? An, si qui frui publico non potuit per hostem, hic tegitur ipsa lege censoria; quem is frui non sinit, qui est, etiamsi non appellatur, hostis, huic ferri auxilium non oportet? Retinete igitur in provincia diutius eum, qui de sociis cum hostibus, de civibus cum sociis faciat pactiones, qui hoc etiam se pluris esse quam collegam putet, quod ille vos tristia voltuque deceperit, ipse numquam se minus quam erat, nequam esse simularit. Piso autem alio quodam modo gloriatur se brevi tempore perfecisse, ne Gabinius unus omnium nequissimus existimaretur.',
                          style: GoogleFonts.poppins(
                              fontSize: 16, color: Colors.black54),textAlign: TextAlign.left
                        ),
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                        child: Text(
                          'Savoir Plus',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                        height: 50,
                        minWidth: 150,
                        color: Color(0xFFE76880),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                    child: Stack(alignment: AlignmentDirectional.bottomEnd,
                  fit: StackFit.passthrough,
                  children: [
                    Positioned.directional(
                      textDirection: TextDirection.rtl,


                      child: Container(
                        child: SvgPicture.asset('assets/images/heart.svg',color: Color(0xFF43ABBB),alignment: Alignment.bottomCenter,),
                      ),
                    ),
                    Positioned.directional(textDirection: TextDirection.rtl,
                      child: Container(
                        child: Image.asset('assets/images/doctors.png',alignment: Alignment.bottomCenter,fit: BoxFit.fill,),
                      ),
                    )
                  ],
                ))
              ],
            ),
          ),
        ],

      ),
    );
  }
}

class NarrowScreen extends StatefulWidget {
  const NarrowScreen({Key? key}) : super(key: key);

  @override
  _NarrowScreenState createState() => _NarrowScreenState();
}

class _NarrowScreenState extends State<NarrowScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              icon: Icon(Icons.menu))
        ],
      ),
      endDrawer: Drawer(),
    );
  }
}
