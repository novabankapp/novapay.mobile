import 'package:injectable/injectable.dart';
import 'package:nave_app/data/graphQL/merchant_graphql.dart';
import 'package:nave_app/domain/entities/Service.dart';
import 'package:nave_app/domain/entities/Service_category.dart';
import 'package:nave_app/domain/repositories/service_repository.dart';

@Injectable(as: ServiceRepository)
class ServiceRepositoryImpl implements ServiceRepository {
  final MerchantGraphQLService _service;

  ServiceRepositoryImpl(this._service);

  @override
  Future<List<ServiceCategory>?> getServiceCategories({required int page, required int size}) async{
       var result = await _service.getServiceCategories(page, size);
       return result?.map((e) => ServiceCategory.fromGetServiceCategoriesPaginated(e!)).toList();
  }

  @override
  Future<List<Service>?> getServices({required int page, required int size}) async{
     var result = await _service.getServices(page, size);
     return result?.map((e) => Service.fromGetServicesPaginated(e!)).toList();
  }

  @override
  Future<List<Service>?> getServicesByCategory({required int categoryId, required int page, required int size}) async {
      var result = await _service.getServicesByCategory(categoryId, page, size);
      return result?.map((e) => Service.fromGetServicesByCategoryPaginated(e!)).toList();
  }
}