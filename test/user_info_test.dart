import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_practice/data/user_info.dart';

void main () {
  Map<String, Map<String, dynamic>> userList = {
    '田中さん': {
      'firstName': '田中',
      'lastName': '一郎',
      'gender': 'female',
      'age': '22',
    },
    'クマ': {
      'firstName': '熊谷',
      'lastName': 'シゲル',
      'gender': 'female',
      'age': '42',
    },
    'さっちゃん': {
      'firstName': '佐藤',
      'lastName': '和子',
      'gender': 'male',
      'age': '29',
    }
  };

  test('userInfo', () {
    UserDetail userDetail = UserDetail.fromJson(userList);

    expect(userDetail.firstName, '田中さん');
  });
}