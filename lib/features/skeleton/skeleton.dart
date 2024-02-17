import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pokemon/presentation/pages/data_page.dart';
import '../pokemon/presentation/pages/pokemon_page.dart';
import '../pokemon/presentation/providers/pokemon_provider.dart';
import '../pokemon/presentation/providers/selected_pokemon_item_provider.dart';
import 'providers/selected_page_provider.dart';
import 'widgets/custom_bottom_bar_widget.dart';

List<Widget> pages = const [
  PokemonPage(),
  DataPage(),
];

class Skeleton extends StatefulWidget {
  const Skeleton({Key? key}) : super(key: key);

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  @override
  void initState() {
    SelectedPokemonItemProvider selectedPokemonItem =
        Provider.of<SelectedPokemonItemProvider>(context, listen: false);

    Provider.of<PokemonProvider>(context, listen: false).eitherFailureOrPokemon(
      value: (selectedPokemonItem.number + 1).toString(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int selectedPage = Provider.of<SelectedPageProvider>(context).selectedPage;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GTemplate'),
      ),
      body: pages[selectedPage],
      bottomNavigationBar: const CustomBottomBarWidget(),
    );
  }
}
