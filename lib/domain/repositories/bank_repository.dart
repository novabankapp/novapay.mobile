import 'package:nave_app/domain/entities/Bank.dart';
import 'package:nave_app/domain/entities/Bank_category.dart';

abstract class BankRepository{
  Future<List<Bank>?> getBanks({ required int page, required int size});
  Future<List<Bank>?> getBanksByCategory({ required int categoryId, required int page, required int size});
  Future<List<BankCategory>?> getBankCategories({ required int page, required int size});
}