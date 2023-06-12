import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/data/models/AgentModel.dart';
import 'package:valorant_app/data/repos/repo.dart';

import 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit(this._repo) : super(AppInitial());
  static AppCubit get(BuildContext context)=>BlocProvider.of(context);
  final Repo _repo;
  List<AgentModel> controllerAgents = [];
  List<AgentModel> sentinelAgents = [];
  List<AgentModel> duelistAgents = [];
  List<AgentModel> initiatorAgents = [];

  Future<void> getAgents() async {
    emit(GetAgentsDataLoadingState());
    var result = await _repo.getAgents();
    return result.fold((l) {
      emit(GetAgentsDataErrorState(l.errMessage));
    }, (r) {
      for (var i in r) {
        if (i.role!.displayName == 'Sentinel') {
          sentinelAgents.add(i);
        } else if (i.role!.displayName == 'Controller') {
          controllerAgents.add(i);
        } else if (i.role!.displayName == 'Duelist') {
          duelistAgents.add(i);
        } else {
          initiatorAgents.add(i);
        }
      }
      emit(GetAgentsDataSuccessState(r));
    });
  }
}
