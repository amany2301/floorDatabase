import 'package:demodatabase/entity/entityclass.dart';
import 'package:floor/floor.dart';

@dao
abstract class ProductDao{


  @Query('SELECT * FROM category')
  Future<List<Items>>getAllCategory();


  // @Query('SELECT * FROM category where id=1')
  // Future<void>getSpecifyCategory();

  @insert
  Future<void> insertProduct(Items items);
}