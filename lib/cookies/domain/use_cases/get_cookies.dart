import 'package:webkeyz_task/cookies/domain/repositories/Repository.dart';

import '../entities/coockie.dart';

class GetCookies {
  final RepositoryContract _repo;

  GetCookies({required RepositoryContract repo}) : _repo = repo;

  List<Cookie> call({int size = 10}) => _repo.getCookies(size);
}
