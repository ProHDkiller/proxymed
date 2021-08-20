import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:proxymed/main.dart';
import 'package:proxymed/widgets/firstPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  TextStyle firstStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500, fontSize: 30, color: Color(0xFFE76880));
  TextStyle secondStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500, fontSize: 30, color: Color(0xFF43ABBB));
  TextStyle thirdStyle =
      GoogleFonts.poppins(fontSize: 16, color: Colors.black54);
  TextStyle fourthStyle = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w300, color: Color(0xFFE76880));
TextStyle bottomStyle = GoogleFonts.poppins(
    fontSize: 16, color: Colors.white);
  String textExample =
      'Quid? qui se etiam nunc subsidiis patrimonii aut amicorum liberalitate sustentant, hos perire patiemur? An, si qui frui publico non potuit per hostem, hic tegitur ipsa lege censoria; quem is frui non sinit, qui est, etiamsi non appellatur, hostis, huic ferri auxilium non oportet? Retinete igitur in provincia diutius eum, qui de sociis cum hostibus, de civibus cum sociis faciat pactiones, qui hoc etiam se pluris esse quam collegam putet, quod ille vos tristia voltuque deceperit, ipse numquam se minus quam erat, nequam esse simularit. Piso autem alio quodam modo gloriatur se brevi tempore perfecisse, ne Gabinius unus omnium nequissimus existimaretur.';


  BoxDecoration imageDecor = BoxDecoration(color: Colors.white, boxShadow: [
    BoxShadow(spreadRadius: 3, blurRadius: 9, color: Colors.black12)
  ]);
  TextStyle appBarStyle =
      GoogleFonts.poppins(fontSize: 16, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      endDrawer: Drawer(),
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
                    onTap: (){
                      Navigator.pushNamed(context, 'calendar');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text('Espace Patient', style: appBarStyle),
                    onTap: (){},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text('Espace Medecin', style: appBarStyle),
                    onTap: (){
                      Navigator.of(context).pushNamed('eMed');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child:
                        Text('Espace Personnels de sante', style: appBarStyle),
                    onTap: (){

                      Navigator.of(context).pushNamed('profile');

                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text('A-propos', style: appBarStyle),
                    onTap: () {
                      Navigator.pushNamed(context, 'newRdv');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text('Contact', style: appBarStyle),
                    onTap: (){
                      Navigator.of(context).pushNamed('dash');

                    },
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
          FirstPage(),
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
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
                        padding: const EdgeInsets.only(
                            left: 40, top: 30, bottom: 30),
                        child: Text(textExample,
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.black54),
                            textAlign: TextAlign.left),
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                        child: Text(
                          'Savoir Plus',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontWeight: FontWeight.w200),
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
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      fit: StackFit.passthrough,
                      children: [
                        Positioned.directional(
                          textDirection: TextDirection.rtl,
                          child: Container(
                            child: SvgPicture.asset(
                              'assets/images/heart.svg',
                              color: Color(0xFF43ABBB),
                              alignment: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                        Positioned.directional(
                          textDirection: TextDirection.rtl,
                          child: Container(
                            child: Image.asset(
                              'assets/images/doctors.png',
                              alignment: Alignment.bottomCenter,
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
          Container(
            child: Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                Positioned(
                  left: 50,
                  right: 0,
                  bottom: 0,
                  child: Row(
                    children: [
                      Expanded(
                          child: Image.asset(
                        'assets/images/present.png',
                      )),
                      SizedBox(
                        width: 550,
                      )
                    ],
                  ),
                ),
                Positioned(
                  width: 550,
                  right: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: 'Vous avez besoin de ',
                            style: firstStyle,
                            children: [
                              TextSpan(text: 'CONSEILS ', style: secondStyle),
                              TextSpan(text: '?\n', style: firstStyle),
                              TextSpan(text: 'TOUJOURS ', style: secondStyle),
                              TextSpan(
                                  text: 'à votre service.', style: firstStyle)
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 30),
                        child: Text(
                          textExample,
                          style: GoogleFonts.poppins(
                              fontSize: 16, color: Colors.black54),
                        ),
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                        child: Text(
                          'Savoir Plus',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontWeight: FontWeight.w200),
                        ),
                        height: 50,
                        minWidth: 150,
                        color: Color(0xFFE76880),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: Image.asset(
                        'assets/images/mask.png',scale: 3.4,

                      ),

                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Centre\nD'exploration\nFonctionelle",
                            style: GoogleFonts.rajdhani(
                                fontSize: 55,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF43ABBB)),
                          ),
                          Container(
                            width: 100,
                            height: 4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xFFE76880)),
                          ),
                          Text(
                            'EXPLORATION FONCTIONNELLE RESPIRATOIRE',
                            style: GoogleFonts.poppins(
                                fontSize: 23, fontWeight: FontWeight.w500),
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  'Les explorations fonctionnelles respiratoires ',
                              style: thirdStyle,
                              children: [
                                TextSpan(text: '(EFR)', style: fourthStyle),
                                TextSpan(
                                    text:
                                        ' regroupent divers examens qui permettent d’évaluer la capacité respiratoire ',
                                    style: thirdStyle),
                                TextSpan(
                                    text: '(le souffle)', style: fourthStyle),
                                TextSpan(
                                    text:
                                        ' d’une personne. Elles sont utilisées à des fins diagnostiques en cas de symptômes respiratoires, mais aussi pour le suivi et la surveillance de maladies pulmonaires connues.\nCes examens permettent de mesurer plusieurs indicateurs, dont le volume d’air pouvant être contenu dans les poumons, le débit de l’air dans les bronches, la qualité des échanges gazeux entre l’air et le sang, etc. \nL’exploration fonctionnelle respiratoire peut rassembler divers examens, dont :\n',
                                    style: thirdStyle),
                                TextSpan(
                                    text: 'La spirométrie',
                                    style: fourthStyle),
                                TextSpan(
                                    text:
                                        ' : c’est l’examen de base, incontournable, des explorations fonctionnelles respiratoires ',
                                    style: thirdStyle),
                                TextSpan(
                                    text: 'La pléthysmographie',
                                    style: fourthStyle),
                                TextSpan(
                                    text:
                                        ": c'est une cabine permettant de mesurer la totalité des volumes et capacités pulmonaires.",
                                    style: thirdStyle),
                                TextSpan(
                                    text: 'La gazométrie', style: fourthStyle),
                                TextSpan(
                                    text: "c'est la mesure des gaz du sang \n",
                                    style: thirdStyle),
                                TextSpan(
                                    text: "Les épreuves d’exercices",
                                    style: fourthStyle),
                              ],
                            ),
                          ),
                        ],
                      ),
                      fit: FlexFit.tight,
                    ),
                    SizedBox(
                      width: 70,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Color(0xFF7CC5D0),
                  height: 225,
                  child: Expanded(
                    child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:18.0),
                              child: SvgPicture.asset('assets/images/lastLogo.svg',color: Colors.white,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'LIENS UTILS',textAlign: TextAlign.left,
                                  style: bottomStyle,
                                ),
                                TextButton(onPressed: (){}, child: Text('Accueil',style: bottomStyle,textAlign: TextAlign.left,)),
                                TextButton(onPressed: (){}, child: Text('A propos',style: bottomStyle,textAlign: TextAlign.left,)),
                                TextButton(onPressed: (){}, child: Text('Services',style: bottomStyle,textAlign: TextAlign.left,)),
                                TextButton(onPressed: (){}, child: Text("Conditions d'utilisation",style: bottomStyle,textAlign: TextAlign.left,)),
                                TextButton(onPressed: (){}, child: Text('Politique de confidentialité',style: bottomStyle,textAlign: TextAlign.left,)),

                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'LIENS UTILS',
                                  style: bottomStyle,textAlign: TextAlign.left,
                                ),
                                Text('Accueil',style: bottomStyle,textAlign: TextAlign.left,),
                                Text('A propos',style: bottomStyle,textAlign: TextAlign.left,),
                                Text('Services',style: bottomStyle,textAlign: TextAlign.left,),
                                Text("Conditions d'utilisation",style: bottomStyle,textAlign: TextAlign.left,),
                                Text('Politique de confidentialité',style: bottomStyle,textAlign: TextAlign.left,),

                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text('© Copyright Smart Logger. Tous droits réservés',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white),),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                  ),
                ),
              )
            ],
          )
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
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset("images/livedemo.png"),
          title: "Live Demo page 1",
          body: "Welcome to Proto Coders Point",
          footer: Text("Footer Text here "),
          decoration: const PageDecoration(
            pageColor: Colors.blue,
          )),
      PageViewModel(
        image: Image.asset("images/visueldemo.png"),
        title: "Live Demo page 2 ",
        body: "Live Demo Text",
        footer: Text("Footer Text  here "),
      ),
      PageViewModel(
        image: Image.asset("images/demo3.png"),
        title: "Live Demo page 3",
        body: "Welcome to Proto Coders Point",
        footer: Text("Footer Text  here "),
      ),
      PageViewModel(
        image: Image.asset("images/demo4.png"),
        title: "Live Demo page 4 ",
        body: "Live Demo Text",
        footer: Text("Footer Text  here "),
      ),
    ];
  }

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
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        showNextButton: true,
        next: Container(color:Colors.blueAccent),
        showSkipButton: true,
        skip: Text("Skip"),
        done: Text("Got it "),
        onDone: () {Navigator.push(context , MaterialPageRoute(builder: (context) => TestWid()),);},
      ),
      endDrawer: Drawer(),
    );
  }
}
class TestWid extends StatefulWidget {
  const TestWid({Key? key}) : super(key: key);

  @override
  _TestWidState createState() => _TestWidState();
}

class _TestWidState extends State<TestWid> {
  @override
  Widget build(BuildContext context) {
    return Container(color:Colors.green);
  }
}
