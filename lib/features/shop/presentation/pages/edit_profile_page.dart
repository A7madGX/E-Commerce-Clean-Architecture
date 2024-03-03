import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/image_strings.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/styles/spacing_styles.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/header.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/icon_container.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/app_bar.dart';

import '../widgets/profile_widgets/profile_info_item.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GCustomAppBar(
        leadingOnPressed: () {
          Navigator.of(context).pop();
        },
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: GSpacingStyles.defaultPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const GIconContainer(
                radius: GSizes.iconXlg,
                iconUrl: GImageString.me,
                padding: 0,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Change Profile Picture'),
              ),

              // Details
              const SizedBox(height: GSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: GSizes.spaceBtwItems),

              // Profile Info
              const GHeaderTitle(header: 'Profile Information'),
              const SizedBox(height: GSizes.spaceBtwItems),

              ProfileInfoItem(
                title: 'Name',
                value: 'Ahmed Gamil Fathy',
                onPressed: () {},
              ),
              ProfileInfoItem(
                title: 'Username',
                value: 'SpicyG',
                onPressed: () {},
              ),

              const SizedBox(height: GSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: GSizes.spaceBtwItems),

              // Personal Info
              GHeaderTitle(header: 'Personal Information'),
              SizedBox(height: GSizes.spaceBtwItems),

              ProfileInfoItem(
                title: 'User ID',
                value: '19P4664',
                onPressed: () {},
              ),
              ProfileInfoItem(
                title: 'E-mail',
                value: 'rabiahmed2001@yahoo.com',
                onPressed: () {},
              ),
              ProfileInfoItem(
                title: 'Phone Number',
                value: '01127719168',
                onPressed: () {},
              ),
              ProfileInfoItem(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              ProfileInfoItem(
                title: 'Date of Birth',
                value: '6 April 2001',
                onPressed: () {},
              ),
              const SizedBox(height: GSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: GSizes.spaceBtwItems),

              // Close Account
              TextButton(
                onPressed: () {},
                child: Text(
                  'Close Account',
                  style: TextStyle().copyWith(color: GColors.error),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
