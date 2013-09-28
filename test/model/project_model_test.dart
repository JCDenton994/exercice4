import 'package:unittest/unittest.dart';
import 'package:dartlero/dartlero.dart';
import 'package:dartlero_example/dartlero_example.dart';

testAngular(AngularModel data) {
  group("Testing Projects", () {
    setUp(() {
      var webdata = new Data();
      expect(webdata, isNotNull);
      webdata.identifier = 'Donnée quelconque';
      webdata.value = 'Valeur rattaché à cette donnée quelconque ';
      data.add(webdata);
      expect(data.length, equals(++AngularCount));

      var prototype = new Data();
      expect(prototype, isNotNull);
      prototype.identifier = 'Angular Prototype';
      prototype.value ='Declaring static documents made simple.';
      data.add(prototype);
      expect(data.length, equals(++AngularCount));

      //projects.display('Projects');
    });
    tearDown(() {
      data.clear();
      expect(data.isEmpty, isTrue);
   
initDisplayModel() {
  AngularModel angularModel = new AngularModel();
  angularModel.init();
  angularModel.display();
}

testModel() {
  AngularModel angularModel = new AngularModel();
  Angular data = angularModel.data;
  testAngular(data);
}

main() {
  //initDisplayModel();
  testModel();
}
