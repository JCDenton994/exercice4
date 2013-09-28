part of dartlero_example;

class AngularModel extends ConceptModel {

  static final String Angular = 'Angular';

  Map<String, ConceptEntities> newEntries() {
    var data = new Data();
    var map = new Map<String, ConceptEntities>();
    map[Angular] = data;
    return map;
  }

  Data get data => getEntry(Angular);

  init() {
    var webdata = new Data();
    webdata.identifier = 'Donnée quelconque';
    webdata.value = 'Valeur rattaché à cette donnée quelconque ';
    data.add(webdata);

    var prototype = new Data();
    prototype.identifier = 'Angular Prototype';
    prototype.value ='Declaring static documents made simple.';
    data.add(prototype);

  }

  display() {
    print('Data Model');
    print('=============');
    data.display('Data');
    print(
      '============= ============= ============= '
      '============= ============= ============= '
    );
  }

}
