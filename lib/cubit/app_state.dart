
import 'package:valorant_app/data/models/AgentModel.dart';

abstract class AppState {}

class AppInitial extends AppState {}
class GetAgentsDataLoadingState extends AppState {}
class GetAgentsDataSuccessState extends AppState {
  List<AgentModel> agents;
  GetAgentsDataSuccessState(this.agents);
}
class GetAgentsDataErrorState extends AppState {
  String error;
  GetAgentsDataErrorState(this.error);
}
