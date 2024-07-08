import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Liste des textes que je vais utiliser pour chaque page
  List<String> listes = [
    'Autonne Effet',
    'Printemps Effet',
    'Plaine d\'Ete'
  ];

  List<String> responses = [
    'Trees with different colors',
    'Beautifull flowers',
    'The sun is so beautifull'
  ];

  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {setState(() {

    });});
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Parallax Animation",style: GoogleFonts.poppins(),),
        centerTitle: true,
      ),
      body: ListView.builder(
        //Assigner le controller sur cette liste
        controller: scrollController,
          itemCount: listes.length,
          itemBuilder: (context, index){
            return Container(
              height: size.height,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(

              ),
              child: Stack(
                children: [
                  Container(
                    transform: Matrix4.identity()/*Crée une matrice de transformation initiale*/..translate(
                        0.0,//Pas de déplacement sur l'axe X
                        scrollController.hasClients/*Vérifie si le contrôleur de défilement a des clients, */
                            ? (-(index * size.height)+ scrollController.position.pixels)/2//
                            :1.0
                    ),
                    width: size.width,
                    height: size.height,
                    child: Image.asset("assets/${index+1}.jpg",fit: BoxFit.cover),//Le nom de mes iamges sont 1.jpg en montant.
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          listes[index],
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          responses[index],
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 30,
                              color: Colors.white.withOpacity(0.8)
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
      }),
    );
  }
}
