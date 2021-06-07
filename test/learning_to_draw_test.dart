// import 'package:flutter/services.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:learning_to_draw/learning_to_draw.dart';
//
// void main() {
//   const MethodChannel channel = MethodChannel('learning_to_draw');
//
//   TestWidgetsFlutterBinding.ensureInitialized();
//
//   setUp(() {
//     channel.setMockMethodCallHandler((MethodCall methodCall) async {
//       return '42';
//     });
//   });
//
//   tearDown(() {
//     channel.setMockMethodCallHandler(null);
//   });
//
//   test('getPlatformVersion', () async {
//     expect(await LearningToDraw.platformVersion, '42');
//   });
// }
