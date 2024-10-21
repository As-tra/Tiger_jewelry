import 'package:flutter/material.dart';
import 'package:jewelry/widgets/boutiques_list_view.dart';
import 'package:jewelry/widgets/custom_floating_button.dart';
import 'package:jewelry/widgets/home_view_app_bar.dart';
import 'package:jewelry/widgets/principaux_boutique.dart';
import 'package:jewelry/widgets/rings_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40),
                HomeViewAppBar(),
                SizedBox(height: 45),
                SizedBox(
                  height: 270,
                  child: RingsListView(),
                ),
                SizedBox(height: 55),
                PrincipauxBoutiques(),
                BoutiquesListView(),
                SizedBox(height: 30),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: CustomFloatingButton(),
          ),
        ],
      ),
    );
  }
}
