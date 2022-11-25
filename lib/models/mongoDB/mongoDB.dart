import 'dart:developer';

import 'package:dwarves_app/models/mongoDB/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';

class DwarvesDatabase {
  static connect() async {
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var status = db.serverStatus();
    print(
        status); //for debugging and tracing what happens to mongoDB AWS server
    var collection = db.collection(COLLECTION_NAME);
  }
}
