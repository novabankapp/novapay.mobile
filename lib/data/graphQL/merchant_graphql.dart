import 'package:graphql/client.dart';
import 'package:nave_app/graphql/merchants/merchants.graphql.dart';

class MerchantGraphQLService {
  GraphQLClient? _client;
  final String url;

  MerchantGraphQLService(this.url) {
    HttpLink link = HttpLink(url);

    _client =
        GraphQLClient(link: link, cache: GraphQLCache(store: HiveStore()));
  }
  Future<List<Query$getServiceCategoriesPaginated$serviceCategoriesPaginated?>?>
  getServiceCategories(int page, int size) async {

    Options$Query$getServiceCategoriesPaginated? options = Options$Query$getServiceCategoriesPaginated(
        variables: Variables$Query$getServiceCategoriesPaginated(page: page, size: size)
    );
    final result = await _client?.query$getServiceCategoriesPaginated(options);
    if(result != null) {
      if (result.hasException) {
        throw result.exception!;
      } else {
        return Query$getServiceCategoriesPaginated
            .fromJson(result.data!)
            .serviceCategoriesPaginated;
      }
    }
    return null;
  }
  Future<List<Query$getServicesPaginated$servicesPaginated?>?> getServices(int page, int size) async {

    Options$Query$getServicesPaginated? options = Options$Query$getServicesPaginated(
        variables: Variables$Query$getServicesPaginated(page: page, size: size)
    );
    final result = await _client?.query$getServicesPaginated(options);
    if(result != null) {
      if (result.hasException) {
        throw result.exception!;
      } else {
        return Query$getServicesPaginated
            .fromJson(result.data!)
            .servicesPaginated;
      }
    }
    return null;
  }

  Future<List<Query$getServicesByCategoryPaginated$servicesByCategoryPaginated?>?> getServicesByCategory(int categoryId,int page, int size) async {

    Options$Query$getServicesByCategoryPaginated? options = Options$Query$getServicesByCategoryPaginated(
        variables: Variables$Query$getServicesByCategoryPaginated(page: page, size: size)
    );
    final result = await _client?.query$getServicesByCategoryPaginated(options);
    if(result != null) {
      if (result.hasException) {
        throw result.exception!;
      } else {
        return Query$getServicesByCategoryPaginated
            .fromJson(result.data!)
            .servicesByCategoryPaginated;
      }
    }
    return null;
  }

}