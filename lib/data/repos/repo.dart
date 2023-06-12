import 'package:dartz/dartz.dart';
import 'package:valorant_app/core/errors/failure.dart';
import 'package:valorant_app/data/models/AgentModel.dart';

abstract class Repo {
  Future<Either<Failure, List<AgentModel>>> getAgents();
}
