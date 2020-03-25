/*
import 'dart:async';
import 'dart:html';

import 'package:jaguar_query/jaguar_query.dart';

class Run extends PostBean {
 PostBean bean;
// Connect
   void connect()async {
     await adapter.connect();

     final bean = new PostBean();

     await bean.createTable();
   }
  // Delete all
   void deleted()async {
     await bean.deleteAll();
   }
  // Insert some user
   void insrt()async {
  await bean.toString();
   }
  // Find one

   void find()async {
     Post post = await bean.findOne(1);
     print(post);
   }

  // Find all posts
   void findall() {
     List<Post> posts = await bean.findAll();
     print(posts);
   }
  // Update a post
  await bean.update(1, 'rowling');

  // Check that the post is updated
  post = await bean.findOne(1);
  print(post);

  // Delete some posts
  await bean.remove(1);
  await bean.remove(2);

  // Find a post when none exists
  try {
  post = await bean.findOne(1);
  print(post);
  } on JaguarOrmException catch (e) {
  print(e);
  }

  // Close connection
  await _adapter.close();
}
*/