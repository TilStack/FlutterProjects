import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:themedata_works/ProviderThemeTest/theme/themeProvider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Consumer<ThemeProvider>(
                // Consumer pour la gestion du theme.
                builder: (context, themeProvider, child) {
              return Switch(
                  activeColor: Colors.white,
                  inactiveThumbColor: Colors.white,
                  thumbColor: const MaterialStatePropertyAll(Colors.black),
                  inactiveTrackColor: Colors.transparent,
                  thumbIcon: MaterialStatePropertyAll(themeProvider.isSelected
                      ? const Icon(Icons.nights_stay)
                      : const Icon(Icons.sunny)),
                  value: themeProvider.isSelected,
                  onChanged: (value) {
                    themeProvider
                        .toggleTheme(); // Fonction pour le changement du theme.
                  });
            }),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text('Douala',
                  style: GoogleFonts.poppins(
                      fontSize: 30, fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 30,
              ),
              Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
                return Icon(
                    themeProvider.isSelected ? Icons.nights_stay : Icons.sunny,
                    size: 250,
                    color: themeProvider.isSelected
                        ? Colors.white
                        : Colors.orange);
              }),
              const SizedBox(
                height: 30,
              ),
              Text(
                '20 C',
                style: GoogleFonts.poppins(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Good Afternoon',
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500),
              ),
              Text(
                'SSADI',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 50,
                width: 50,
                child: Divider(
                  thickness: 3,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(Icons.wb_twighlight),
                      Text(
                        'SUNRISE',
                      ),
                      Text('17:00')
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.air),
                      Text(
                        'Wind',
                      ),
                      Text('4m/s')
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.thermostat),
                      Text(
                        'Tempereture',
                      ),
                      Text('23')
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
