part of dartlero_example;

class Angular extends ConceptEntity<Angular> {

  String _identifier;
  String value;

  String get identifier => _identifier;
  set identifier(String identifier) {
    _identifier = identifier;
    if (code == null) {
      code = identifier;
    }
  }

  Angular newEntity() => new Angular();

  String toString() {
    return '  {\n '
           '    ${super.toString()}, \n '
           '    identifier: ${identifier}, \n '
           '    value: ${value}\n'
           '  }';
  }

  Map<String, String> toJson() {
    Map<String, String> entityMap = super.toJson();
    entityMap['identifier'] = identifier;
    entityMap['value'] = value;
    return entityMap;
  }

  
  bool get onProgramming =>
      value.contains('Programming') ? true : false;


}

class Data extends ConceptEntities<Angular> {

  Data newEntities() => new Data();
  Angular newEntity() => new Angular();

}
