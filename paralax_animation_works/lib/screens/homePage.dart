import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Liste des textes que je vais utiliser pour chaque page
  List<String> listes = [
    'Autonne Effet',
    'Printemps Effet',
    'Plaine d\'Ete',
    'Big Tree'
  ];

  List<String> responses = [
    'Trees with different colors',
    'Beautifull flowers',
    'The sun is so beautifull',
    'A very beautfifull tree'
  ];

  // Déclaration du contrôleur de défilement
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    // Initialisation du contrôleur de défilement
    scrollController = ScrollController();

    // Ajoute un écouteur pour mettre à jour l'état lorsqu'il y a un défilement
    scrollController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // Obtenez la taille de l'écran
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Parallax Animation", style: GoogleFonts.poppins()),
        centerTitle: true,
      ),
      body: ListView.builder(
        // Assigner le contrôleur de défilement à cette liste
        controller: scrollController,
        itemCount: listes.length, // Nombre d'éléments dans la liste
        itemBuilder: (context, index) {
          return Container(
            height: size
                .height, // La hauteur de chaque élément de la liste est égale à la hauteur de l'écran
            clipBehavior: Clip
                .hardEdge, // Couper le contenu qui dépasse les limites de manière nette,
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Container(
                  // Applique une transformation à la matrice pour créer un effet de parallaxe
                  transform: Matrix4.identity()
                    ..translate(
                      0.0, // Pas de déplacement sur l'axe X
                      scrollController.hasClients
                          // Si le contrôleur a des clients, calcule la translation en Y en fonction de la position de défilement
                          ? (-(index * size.height) +
                                  scrollController.position.pixels) /
                              2
                          // Sinon, applique une translation par défaut
                          : 1.0,
                    ),
                  width: size
                      .width, // La largeur de l'image est égale à la largeur de l'écran
                  height: size
                      .height, // La hauteur de l'image est égale à la hauteur de l'écran
                  // Charge l'image depuis les assets, en ajustant la taille pour couvrir toute la zone
                  child: Image.asset(
                    "assets/${index + 1}.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                // Centre le texte au milieu de chaque élément de la liste
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        listes[index], // Texte principal de l'élément
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        responses[index], // Texte secondaire de l'élément
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
