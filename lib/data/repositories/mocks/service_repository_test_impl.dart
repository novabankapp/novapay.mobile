import 'package:injectable/injectable.dart';
import 'package:nave_app/domain/entities/Service.dart';
import 'package:nave_app/domain/entities/Service_category.dart';
import 'package:nave_app/domain/repositories/service_repository.dart';

@Injectable(as: ServiceRepository)
class ServiceRepositoryTestImpl extends ServiceRepository{
  @override
  Future<List<ServiceCategory>?> getServiceCategories({required int page, required int size}) {
      return Future.delayed(Duration.zero, () => [ServiceCategory(
        recordId: 1,
        name: "Insurance",
      ), ServiceCategory(
        recordId: 2,
        name: "Water",
      ),
        ServiceCategory(
          recordId: 1,
          name: "Electricity",
        )]);
  }

  @override
  Future<List<Service>?> getServices({required int page, required int size}) {
    return Future.delayed(Duration.zero, () => [
      Service(
        recordId: 1,
        shortCode: "LWB",
        name: "LWB",
        uniqueIdentifier: "1234",
        isActive: true
      ),
      Service(
          recordId: 1,
          shortCode: "BWB",
          name: "BWB",
          uniqueIdentifier: "1234",
          isActive: true
      )
    ]);
  }

  @override
  Future<List<Service>?> getServicesByCategory({required int categoryId, required int page, required int size}) {
    return Future.delayed(Duration.zero, () => [
      Service(
          recordId: 1,
          shortCode: "LWB",
          uniqueIdentifier: "1234",
          isActive: true
      ),
      Service(
          recordId: 1,
          shortCode: "BWB",
          uniqueIdentifier: "1234",
          isActive: true
      )
    ]);
  }
  
}