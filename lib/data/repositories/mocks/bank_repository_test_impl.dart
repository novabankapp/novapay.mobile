import 'package:injectable/injectable.dart';
import 'package:nave_app/data/graphQL/bank_graphql.dart';
import 'package:nave_app/domain/entities/Bank.dart';
import 'package:nave_app/domain/entities/Bank_category.dart';
import 'package:nave_app/domain/repositories/bank_repository.dart';

@Injectable(as: BankRepository)
class BankRepositoryTestImpl implements BankRepository{
  @override
  Future<List<BankCategory>?> getBankCategories({required int page, required int size}) {
    return Future.delayed(Duration.zero, () => [
      BankCategory(
        name: "Banks"
      ),
      BankCategory(
          name: "Microfinance"
      ),
      BankCategory(
          name: "Sacco"
      )
    ]);
  }

  @override
  Future<List<Bank>?> getBanks({required int page, required int size}) {
    return Future.delayed(Duration.zero, () => [
      Bank(
        recordId: 1,
        name: "National Bank",
        uniqueIdentifier: "1234",
        isActive: true,
        categoryId: 1,
      ),
      Bank(
        recordId: 1,
        name: "National Bank",
        uniqueIdentifier: "1234",
        isActive: true,
        categoryId: 1,
      ),
      Bank(
        recordId: 1,
        name: "NBS Bank",
        uniqueIdentifier: "1234",
        isActive: true,
        categoryId: 1,
      ),
      Bank(
        recordId: 1,
        name: "Standard Bank",
        uniqueIdentifier: "1234",
        isActive: true,
        categoryId: 1,
      ),
      Bank(
        recordId: 1,
        name: "FDH Bank",
        uniqueIdentifier: "1234",
        isActive: true,
        categoryId: 1,
      )
    ]);
  }

  @override
  Future<List<Bank>?> getBanksByCategory({required int categoryId, required int page, required int size}) {
    return Future.delayed(Duration.zero, () => [
       Bank(
          recordId: 1,
          name: "National Bank",
          uniqueIdentifier: "1234",
          isActive: true,
          categoryId: 1,
       ),
      Bank(
        recordId: 1,
        name: "National Bank",
        uniqueIdentifier: "1234",
        isActive: true,
        categoryId: 1,
      ),
      Bank(
        recordId: 1,
        name: "NBS Bank",
        uniqueIdentifier: "1234",
        isActive: true,
        categoryId: 1,
      ),
      Bank(
        recordId: 1,
        name: "Standard Bank",
        uniqueIdentifier: "1234",
        isActive: true,
        categoryId: 1,
      ),
      Bank(
        recordId: 1,
        name: "FDH Bank",
        uniqueIdentifier: "1234",
        isActive: true,
        categoryId: 1,
      )
    ]);
  }

}