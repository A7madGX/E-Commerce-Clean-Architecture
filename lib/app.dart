import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/authentication/presentation/pages/sigin_page.dart';
import 'package:flutter_mapp_clean_architecture/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:flutter_mapp_clean_architecture/features/onboarding/presentation/providers/onboarding_provider.dart';
import 'package:provider/provider.dart';

import 'core/themes/theme.dart';
import 'features/pokemon/presentation/providers/pokemon_provider.dart';
import 'features/pokemon/presentation/providers/selected_pokemon_item_provider.dart';
import 'features/skeleton/providers/selected_page_provider.dart';

class GApp extends StatelessWidget {
  const GApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SelectedPageProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PokemonProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SelectedPokemonItemProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => OnBoardingProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GTemplate App',
        themeMode: ThemeMode.system,
        theme: GAppTheme.lightTheme,
        darkTheme: GAppTheme.darkTheme,
        initialRoute: '/onBoarding',
        routes: {
          '/onBoarding': (context) => const OnBoardingScreen(),
          '/signIn': (context) => const SignInScreen(),
        },
      ),
    );
  }
}
