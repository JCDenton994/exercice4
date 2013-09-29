part of dartlero_example;

class Demande extends ConceptEntity<Demande>
{
  String _id;
  String titre;
  String priorite;
  
  String get id => _id;
  set id(String id) {
    _id = id;
    if (code == null) {
      String code = id;
    }
  
}
  
  Demande newEntity() => new Demande();
  
  Demande copy() {
    var demande = super.copy();
    demande.id = id;
    demande.titre = titre;
    demande.priorite = priorite;
    return demande;
  }

  String toString() {
    return '  {\n '
           '    ${super.toString()}, \n '
           '    id: ${id}, \n '
           '    titre: ${titre}\n'
           '    priorite: ${priorite}\n'
           '  }';
  }
  
 bool get Eleve =>
      priorite.contains('Eleve') ? true : false;
  
 bool get Moyenne =>
      priorite.contains('Moyenne') ? true : false;

 bool get Basse =>
      priorite.contains('Basse') ? true : false;

String getpriorite() => 
    (this.priorite);

}

class Demandes extends ConceptEntities<Demande> {
  Demandes newEntities() => new Demandes();
  Demande newEntity() => new Demande();
}