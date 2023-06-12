import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:valorant_app/core/utlis/web_service.dart';
import 'package:valorant_app/data/models/AgentModel.dart';
import 'package:valorant_app/data/repos/repo.dart';

import '../../core/errors/failure.dart';

class RepoImp implements Repo {
  final ApiService _apiService;

  RepoImp(this._apiService);

  @override
  Future<Either<Failure, List<AgentModel>>> getAgents() async {
    try {
      var data = await _apiService.get(endPoint: 'agents');
      List<AgentModel> models = [];
      for (var i in data["data"]) {
        try {
          models.add(AgentModel.fromJson(i));
        } catch (e) {
          if (kDebugMode) {
            print(e.toString());
          }
        }
      }
      return right(models);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
