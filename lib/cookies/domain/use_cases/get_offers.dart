import 'package:webkeyz_task/cookies/domain/entities/offer.dart';
import 'package:webkeyz_task/cookies/domain/repositories/Repository.dart';

class GetOffers {
  final RepositoryContract _repo;

  GetOffers({required RepositoryContract repo}) : _repo = repo;

  List<Offer> call({int size = 5}) => _repo.getOffers(size);
}
