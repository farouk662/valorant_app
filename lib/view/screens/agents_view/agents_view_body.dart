import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/core/utlis/colors.dart';
import 'package:valorant_app/cubit/app_cubit.dart';
import 'package:valorant_app/view/widgets/agents_widgets/agent_item_builder.dart';

import '../../../cubit/app_state.dart';
class AgentsViewBody extends StatelessWidget {
  const AgentsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        if(state is GetAgentsDataSuccessState){
        return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, i) => AgentItemBuilder(index: i,model: state.agents[i],),
            itemCount: state.agents.length);
      }else {
          return const Center(child: CircularProgressIndicator(
            color: AppColors.white,
          ));
        }

      }

    );
  }
}
