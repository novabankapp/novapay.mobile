import 'package:injectable/injectable.dart';
import 'package:nave_app/data/graphQL/merchant_graphql.dart';
import 'package:nave_app/domain/entities/Merchant.dart';
import 'package:nave_app/domain/entities/Merchant_category.dart';
import 'package:nave_app/domain/repositories/service_repository.dart';

//@Injectable(as: ServiceRepository)
class ServiceRepositoryImpl implements ServiceRepository {
  final MerchantGraphQLService _service;

  ServiceRepositoryImpl(this._service);

  @override
  Future<List<MerchantCategory>?> getServiceCategories({required int page, required int size}) async{
       var result = await _service.getMerchantCategories(page, size);
       return result?.map((e) => MerchantCategory.fromGetServiceCategoriesPaginated(e!)).toList();
  }

  @override
  Future<List<Merchant>?> getServices({required int page, required int size}) async{
     var result = await _service.getMerchants(page, size);
     return result?.map((e) => Merchant.fromGetMerchantsPaginated(e!)).toList();
  }

  @override
  Future<List<Merchant>?> getServicesByCategory({required int categoryId, required int page, required int size}) async {
      var result = await _service.getMerchantsByCategory(categoryId, page, size);
      return result?.map((e) => Merchant.fromGetMerchantsByCategoryPaginated(e!)).toList();
  }
}