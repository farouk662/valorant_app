import 'package:flutter/material.dart';
import 'package:valorant_app/data/models/AgentModel.dart';

import '../../widgets/agents_widgets/agent_item_builder.dart';

class AgentListViewBuilder extends StatelessWidget {
  const AgentListViewBuilder({Key? key, required this.agents,required this.text}) : super(key: key);
  final List<AgentModel> agents;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text(text,style: const TextStyle(fontSize: 34),),centerTitle: true
        ,) ,
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, i) => AgentItemBuilder(
                index: i,
                model: agents[i],
              ),
          itemCount: agents.length),
    );

  }
}
