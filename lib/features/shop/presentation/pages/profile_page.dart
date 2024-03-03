import 'package:flutter/material.dart';

import '../widgets/profile_widgets/account_settings_group.dart';
import '../widgets/profile_widgets/app_settings_group.dart';
import '../widgets/profile_widgets/top_profile_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          flexibleSpace: TopProfileSection(),
          expandedHeight: 160,
          automaticallyImplyLeading: false,
          collapsedHeight: 70,
        ),
        AccountSettingsGroup(),
        AppSettingsGroup(),
      ],
    );
  }
}
