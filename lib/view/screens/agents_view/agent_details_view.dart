import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:valorant_app/core/utlis/colors.dart';
import 'package:valorant_app/data/models/AgentModel.dart';

class AgentDetailsScreen extends StatelessWidget {
   AgentDetailsScreen({Key? key, required this.model}) : super(key: key);
  final AgentModel model;
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    double pageHeight = MediaQuery.of(context).size.height;
    // double pageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.homecolorr,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 60, left: 7),
                child: Text(
                  '${model.displayName}',
                  style: const TextStyle(
                    fontSize: 60,
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -50),
                child: Image.network(
                  '${model.fullPortrait}',
                  height: pageHeight * .7,
                  fit: BoxFit.cover,
                  // alignment: Alignment.topCenter,
                ),
              ),
              Center(
                child: IconButton(
                    onPressed: () async {
                      await player.play(UrlSource('${model.voiceLine!.mediaList![0].wave}')); // equivalent to setSource(UrlSource(url));
                    },
                    icon: const Icon(Icons.play_arrow_rounded,size: 30,)),
              ),
              const SizedBox(height: 20,),
              const Text(
                'Abilities',
                style: TextStyle(color: AppColors.defaultColor, fontSize: 28),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  abilityBuilder('${model.abilities![0].displayIcon}',
                      '${model.abilities![0].displayName}'),
                  abilityBuilder('${model.abilities![1].displayIcon}',
                      '${model.abilities![1].displayName}'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  abilityBuilder('${model.abilities![2].displayIcon}',
                      '${model.abilities![2].displayName}'),
                  abilityBuilder('${model.abilities![3].displayIcon}',
                      '${model.abilities![3].displayName}'),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'biography',
                style: TextStyle(color: AppColors.defaultColor, fontSize: 28),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '${model.description}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget abilityBuilder(String icon, String text) => Expanded(
          child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            icon,
            height: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 10),
          )
        ],
      ));
}
