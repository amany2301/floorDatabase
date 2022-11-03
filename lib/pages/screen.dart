import 'package:demodatabase/dao/productDao.dart';
import 'package:demodatabase/data/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../data/database_manager.dart';
import '../entity/entityclass.dart';

class DataShow extends StatelessWidget {


  DataShow({Key? key}) : super(key: key);
  List<Items> list=[];
  List<Items> listDatabase=[];

  // final ProductDao dao = DatabaseManager().getDatabase();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data show"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
              onPressed:() async
              {
                await getDaoInsert();
              }
          )
        ],
      ),
       body: FutureBuilder(
         //future: DefaultAssetBundle.of(context).loadString("assets/datafile.json"),
         future: getDaoShow(),
         builder: (context,snapshot){
           return snapshot.hasData?ListView.builder(
             itemCount: listDatabase.length,
               itemBuilder: (BuildContext context, int index)
               {
                 return ListTile(
                   title: Text(listDatabase[index].categoryName),
                 );
         }
             )
            : const CircularProgressIndicator();
           }
       )

      // SizedBox(
      //   child: Expanded(
      //     child: ListView.builder(
      //       itemCount: list.length,
      //       itemBuilder: (
      //           BuildContext context, int index)
      //       {
      //        return ListTile(
      //          title: Text(list[index]),
      //        );
      //       },
      //     ),
      //   ),
      //
      // )
    );
  }


  getDaoInsert() async
  {
    list.add(Items(id: 1, categoryName: "live class"));
    list.add(Items(id: 2,categoryName: "ebooks"));
    list.add(Items(id: 3,categoryName: "videos"));
    list.add(Items(id: 4,categoryName: "test series"));
    ProductDao productDao = await getDaoObject();
    productDao.insertProduct(list);
  }

  getDaoObject() async
  {
     // await $FloorAppDatabase.databaseBuilder('app_database.db').build();
     AppDatabase database = await DatabaseManager().getDatabase();
     return database.productDao;
  }
  getDaoShow() async
  {
    ProductDao productDao = await getDaoObject();
    listDatabase= await productDao.getAllCategory();
    return listDatabase;

  }

}
