import 'package:injectable/injectable.dart';
import 'package:nave_app/data/graphQL/bank_graphql.dart';
import 'package:nave_app/domain/entities/Bank.dart';
import 'package:nave_app/domain/entities/Bank_category.dart';
import 'package:nave_app/domain/repositories/bank_repository.dart';

@Injectable(as: BankRepository)
class BankRepositoryImpl implements BankRepository{
  final BankGraphQLService _service;

  BankRepositoryImpl(this._service);
  @override
  Future<List<BankCategory>?> getBankCategories({required int page, required int size}) async {
     var result = await _service.getBanksCategories(page, size);
     return result?.map((e) => BankCategory.fromGetBankCategoriesPaginated(e!)).toList();

  }

  @override
  Future<List<Bank>?> getBanks({required int page, required int size}) async {
     var result = await _service.getBanks(page, size);
     return result?.map((e) => Bank.fromGetBanksPaginated(e!)).toList();
  }

  @override
  Future<List<Bank>?> getBanksByCategory({required int categoryId, required int page, required int size}) async{
    var result = await _service.getBanksByCategory(categoryId, page, size);
    return result?.map((e) => Bank.fromGetBanksByCategoryPaginated(e!)).toList();
  }

}