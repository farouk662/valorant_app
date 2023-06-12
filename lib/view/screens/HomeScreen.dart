import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant_app/core/utlis/colors.dart';
import 'package:valorant_app/view/screens/roles_view/roles_view_body.dart';

import 'agents_view/agents_view_body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

// late controller=TabController(length: 2, vsync: this)
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 95,
            title: const Text(
              'valorant',
              style: TextStyle(fontSize: 34),
            ),
            bottom: const TabBar(
              indicatorPadding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              indicatorColor: AppColors.active,
              labelColor: AppColors.active,
              labelPadding: EdgeInsets.only(bottom: 7),
              unselectedLabelColor: AppColors.defaultColor,
              tabs: [
                Text(
                  'Agents',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Rules',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            centerTitle: true,
          ),
          body: const TabBarView(
            children: [
              AgentsViewBody(),
              RolesViewBody()
            ],
          )),
    );
  }


}
