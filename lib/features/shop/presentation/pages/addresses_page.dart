import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/pages/new_address_page.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/app_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/address_widgets/address_item.dart';

class AddressesPage extends StatelessWidget {
  const AddressesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GCustomAppBar(title: Text('Addresses')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const AddAddress()),
          );
        },
        backgroundColor: GColors.primary,
        child: const Icon(Iconsax.add),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              AddressItem(selected: false),
              AddressItem(selected: true),
              AddressItem(selected: false),
              AddressItem(selected: false),
              AddressItem(selected: false),
              AddressItem(selected: false),
              AddressItem(selected: false),
            ],
          ),
        ),
      ),
    );
  }
}
