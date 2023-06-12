import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant_app/cubit/app_cubit.dart';
import 'package:valorant_app/data/models/AgentModel.dart';
import 'package:valorant_app/view/screens/roles_view/roles_agent_list_bulider.dart';

class RolesViewBody extends StatelessWidget {
  const RolesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    return Padding(
      padding: const EdgeInsets.only(top: 80.0, left: 40, right: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             roleItemBuilder(context: context, list: cubit.sentinelAgents, text: 'Sentinel', image: 'assets/images/Sentinel.png'),
             roleItemBuilder(context: context, list: cubit.controllerAgents, text: 'Controller', image: 'assets/images/controller.png'),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              roleItemBuilder(context: context, list: cubit.duelistAgents, text: 'Duelist', image: 'assets/images/Duelist.png'),
              roleItemBuilder(context: context, list: cubit.initiatorAgents, text: 'Initiator', image: 'assets/images/Initiator.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget roleItemBuilder({required BuildContext context,
  required List<AgentModel> list,
    required String text,
    required String image
  }) => InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AgentListViewBuilder(
                    agents: list, text: text)));
      },
      child: Image.asset(
        image,
      ));
}
