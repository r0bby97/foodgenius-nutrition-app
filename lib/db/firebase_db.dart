import 'package:firebase_database/firebase_database.dart';
import 'package:foodgenius/db/recipes.dart';
import 'package:foodgenius/screens/recipe.dart';
import 'recipes.dart';

final databaseReference = FirebaseDatabase.instance.reference();

DatabaseReference savePost(Recipes recipes) {
  var id = databaseReference.child('recipes/').push();
  id.set(recipes.toJson());
  return id;
}
