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
  Future<List<Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated?>?>
  getMerchantCategories(int page, int size) async {

    Options$Query$getMerchantCategoriesPaginated? options = Options$Query$getMerchantCategoriesPaginated(
        variables: Variables$Query$getMerchantCategoriesPaginated(page: page, size: size)
    );
    final result = await _client?.query$getMerchantCategoriesPaginated(options);
    if(result != null) {
      if (result.hasException) {
        throw result.exception!;
      } else {
        return Query$getMerchantCategoriesPaginated
            .fromJson(result.data!)
            .merchantCategoriesPaginated;
      }
    }
    return null;
  }
  Future<List<Query$getMerchantsPaginated$merchantsPaginated?>?> getMerchants(int page, int size) async {

    Options$Query$getMerchantsPaginated? options = Options$Query$getMerchantsPaginated(
        variables: Variables$Query$getMerchantsPaginated(page: page, size: size)
    );
    final result = await _client?.query$getMerchantsPaginated(options);
    if(result != null) {
      if (result.hasException) {
        throw result.exception!;
      } else {
        return Query$getMerchantsPaginated
            .fromJson(result.data!)
            .merchantsPaginated;
      }
    }
    return null;
  }

  Future<List<Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated?>?> getMerchantsByCategory(int categoryId,int page, int size) async {

    Options$Query$getMerchantByCategoryPaginated? options = Options$Query$getMerchantByCategoryPaginated(
        variables: Variables$Query$getMerchantByCategoryPaginated(page: page, size: size)
    );
    final result = await _client?.query$getMerchantByCategoryPaginated(options);
    if(result != null) {
      if (result.hasException) {
        throw result.exception!;
      } else {
        return Query$getMerchantByCategoryPaginated
            .fromJson(result.data!)
            .merchantsByCategoryPaginated;
      }
    }
    return null;
  }

}