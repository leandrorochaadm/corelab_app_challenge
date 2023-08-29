import '../entities/entities.dart';

abstract class GetLastAds {
  Future<List<LastAdsEntity>> call();
}
