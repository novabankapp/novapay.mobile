import 'package:graphql/client.dart';
import 'package:nave_app/graphql/banks/banks.graphql.dart';

class BankGraphQLService {
  GraphQLClient? _client;
  final String url;

  BankGraphQLService(this.url) {
    HttpLink link = HttpLink(url);

    _client =
        GraphQLClient(link: link, cache: GraphQLCache(store: HiveStore()));
  }
  Future<List<Query$getBankCategoriesPaginated$bankCategoriesPaginated?>?>
  getBanksCategories(int page, int size) async {

    Options$Query$getBankCategoriesPaginated? options = Options$Query$getBankCategoriesPaginated(
        variables: Variables$Query$getBankCategoriesPaginated(page: page, size: size)
    );
    final result = await _client?.query$getBankCategoriesPaginated(options);
    if(result != null) {
      if (result.hasException) {
        throw result.exception!;
      } else {
        return Query$getBankCategoriesPaginated
            .fromJson(result.data!)
            .bankCategoriesPaginated;
      }
    }
    return null;
  }
  Future<List<Query$getBanksByCategoryPaginated$banksByCategoryPaginated?>?>
  getBanksByCategory(int categoryId, int page, int size) async {

    Options$Query$getBanksByCategoryPaginated? options = Options$Query$getBanksByCategoryPaginated(
        variables: Variables$Query$getBanksByCategoryPaginated(page: page, size: size)
    );
    final result = await _client?.query$getBanksByCategoryPaginated(options);
    if(result != null) {
      if (result.hasException) {
        throw result.exception!;
      } else {
        return Query$getBanksByCategoryPaginated
            .fromJson(result.data!)
            .banksByCategoryPaginated;
      }
    }
    return null;
  }
  Future<List<Query$getBanksPaginated$banksPaginated?>?>
  getBanks(int page, int size) async {

    Options$Query$getBanksPaginated? options = Options$Query$getBanksPaginated(
        variables: Variables$Query$getBanksPaginated(page: page, size: size)
    );
    final result = await _client?.query$getBanksPaginated(options);
    if(result != null) {
      if (result.hasException) {
        throw result.exception!;
      } else {
        return Query$getBanksPaginated
            .fromJson(result.data!)
            .banksPaginated;
      }
    }
    return null;
  }
}