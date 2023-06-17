import 'package:webkeyz_task/cookies/data/data_sources/remote/remote_data_source.dart';
import 'package:webkeyz_task/cookies/domain/entities/coockie.dart';
import 'package:webkeyz_task/cookies/domain/entities/offer.dart';
import 'package:webkeyz_task/cookies/domain/repositories/Repository.dart';

class CookiesRepository extends RepositoryContract {
  CookiesRepository({required this.remoteDataSource});
  RemoteDataSource remoteDataSource;

  @override
  List<Cookie> getCookies(int size) => remoteDataSource.cookiesData(size: size);

  @override
  List<Offer> getOffers(int size) => remoteDataSource.offersData(size: size);
}
