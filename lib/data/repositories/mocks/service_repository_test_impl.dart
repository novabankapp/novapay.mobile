import 'package:injectable/injectable.dart';
import 'package:nave_app/domain/entities/Merchant.dart';
import 'package:nave_app/domain/entities/Merchant_category.dart';
import 'package:nave_app/domain/repositories/service_repository.dart';

@Injectable(as: ServiceRepository)
class ServiceRepositoryTestImpl extends ServiceRepository{
  @override
  Future<List<MerchantCategory>?> getServiceCategories({required int page, required int size}) {
      return Future.delayed(Duration.zero, () => [MerchantCategory(
        recordId: 1,
        name: "Insurance",
      ), MerchantCategory(
        recordId: 2,
        name: "Water",
      ),
        MerchantCategory(
          recordId: 1,
          name: "Electricity",
        )]);
  }

  @override
  Future<List<Merchant>?> getServices({required int page, required int size}) {
    return Future.delayed(Duration.zero, () => [
      Merchant(
        recordId: 1,
        shortCode: "LWB",
        name: "LWB",
        uniqueIdentifier: "1234",
        isActive: true
      ),
      Merchant(
          recordId: 1,
          shortCode: "BWB",
          name: "BWB",
          uniqueIdentifier: "1234",
          isActive: true
      )
    ]);
  }

  @override
  Future<List<Merchant>?> getServicesByCategory({required int categoryId, required int page, required int size}) {
    return Future.delayed(Duration.zero, () => [
      Merchant(
          recordId: 1,
          shortCode: "LWB",
          uniqueIdentifier: "1234",
          isActive: true
      ),
      Merchant(
          recordId: 1,
          shortCode: "BWB",
          uniqueIdentifier: "1234",
          isActive: true
      )
    ]);
  }
  
}