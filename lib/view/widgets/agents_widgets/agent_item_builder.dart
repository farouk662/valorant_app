import 'package:flutter/material.dart';
import 'package:valorant_app/data/models/AgentModel.dart';
import 'package:valorant_app/view/screens/agents_view/agent_details_view.dart';

import '../../../core/utlis/colors.dart';
import 'ability_builder.dart';

class AgentItemBuilder extends StatelessWidget {
  const AgentItemBuilder({Key? key, required this.index, required this.model})
      : super(key: key);
  final int index;
  final AgentModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AgentDetailsScreen(model: model)));
      },
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            if (index == 0)
              const SizedBox(
                height: 50,
              ),
            Stack(
              children: [
                Container(
                  height: 160,
                  padding: const EdgeInsets.only(left: 22),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.defaultColor.withOpacity(.3)),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              '${model.displayName}',
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 30),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AbilityWidgetBuilder(
                                  text: '${model.abilities![0].displayName}'),
                              const SizedBox(
                                width: 20,
                              ),
                              AbilityWidgetBuilder(
                                  text: '${model.abilities![1].displayName}')
                            ],
                          )
                        ],
                      )),
                ),
                Transform.translate(
                  offset: const Offset(20, -62),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image.network(
                      '${model.fullPortrait}',
                      height: 220,
                      alignment: Alignment.topRight,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
