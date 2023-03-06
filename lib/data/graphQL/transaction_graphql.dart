import 'package:graphql/client.dart';
import 'package:nave_app/graphql/transactions/transactions.graphql.dart';

class TransactionGraphQLService {
  GraphQLClient? _client;
  final String url;

  TransactionGraphQLService(this.url) {
    HttpLink link = HttpLink(url);

    _client =
        GraphQLClient(link: link, cache: GraphQLCache(store: HiveStore()));
  }
  Future<List<Query$getCustomerTransactionPaginated$customerTransactionRefPaginated?>?> getCustomerTransactionRefs(String customerRef,int page, int size) async {

    Options$Query$getCustomerTransactionPaginated? options = Options$Query$getCustomerTransactionPaginated(
        variables: Variables$Query$getCustomerTransactionPaginated(customerRef: customerRef, page: page, size: size)
    );
    final result = await _client?.query$getCustomerTransactionPaginated(options);
    if(result != null) {
      if (result.hasException) {
        throw result.exception!;
      } else {
        return Query$getCustomerTransactionPaginated
            .fromJson(result.data!)
            .customerTransactionRefPaginated;
      }
    }
    return null;
  }
}