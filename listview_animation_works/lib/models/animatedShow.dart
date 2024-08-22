class AnimatedShow {
  final String imagePath; // Chemin de l'image du dessin animé
  final String name; // Nom du dessin animé
  final int yearOfCreation; // Année de création du dessin animé
  final String network; // Chaîne de diffusion

  const AnimatedShow({
    required this.imagePath,
    required this.name,
    required this.yearOfCreation,
    required this.network,
  });
}

const List<AnimatedShow> animatedShows = [
  AnimatedShow(
    imagePath: "assets/tj.png",
    name: "Tom and Jerry",
    yearOfCreation: 1940,
    network: "Boomerang",
  ),
  AnimatedShow(
    imagePath: "assets/gf.png",
    name: "Garfield",
    yearOfCreation: 1978,
    network: "CBS",
  ),
  AnimatedShow(
    imagePath: "assets/smp.png",
    name: "The Simpsons",
    yearOfCreation: 1989,
    network: "Fox",
  ),
  AnimatedShow(
    imagePath: "assets/adv.png",
    name: "Adventure Time",
    yearOfCreation: 2010,
    network: "Cartoon Network",
  ),
  AnimatedShow(
    imagePath: "assets/frk.png",
    name: "Franklin",
    yearOfCreation: 1997,
    network: "Tiji",
  ),
  AnimatedShow(
    imagePath: "assets/rgs.png",
    name: "Regular Show",
    yearOfCreation: 2010,
    network: "Cartoon Network",
  ),
  AnimatedShow(
    imagePath: "assets/sc.png",
    name: "Scooby-Doo",
    yearOfCreation: 1969,
    network: "Boomerang",
  ),
  AnimatedShow(
    imagePath: "assets/lt.png",
    name: "Looney Tunes",
    yearOfCreation: 1930,
    network: "Boomerang",
  ),
  AnimatedShow(
    imagePath: "assets/ogc.png",
    name: "Oggy and the Cockroaches",
    yearOfCreation: 1998,
    network: "Tiji",
  ),
  AnimatedShow(
    imagePath: "assets/tc.png",
    name: "Tchoupi et Doudou",
    yearOfCreation: 1998,
    network: "Tiji",
  ),
  AnimatedShow(
    imagePath: "assets/sam.png",
    name: "Sam Sam",
    yearOfCreation: 1998,
    network: "Tiji",
  ),
  AnimatedShow(
    imagePath: "assets/po.png",
    name: "My little pony",
    yearOfCreation: 1998,
    network: "Tiji",
  ),
  AnimatedShow(
    imagePath: "assets/my.png",
    name: "Maya l'abeille",
    yearOfCreation: 1998,
    network: "Tiji",
  ),
];
