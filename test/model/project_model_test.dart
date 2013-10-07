import 'package:unittest/unittest.dart';
import 'package:dartlero/dartlero.dart';
import 'package:dartlero_example/dartlero_example.dart';

TestDemandes(Demandes demandes){

  group("Test demandes", () {
    setUp(() {
      var nombreDemandes = 0;
      expect(demandes.length, equals(nombreDemandes));

    var projetfact = new Demande();
    expect(projetfact,isNotNull);
    projetfact.id = 'F123456';
    projetfact.titre = 'Réaliser le projet de facturation';
    projetfact.priorite = 'Eleve';
    demandes.add(projetfact);
  expect(demandes.length, equals(++nombreDemandes));

    var optimisation = new Demande();
    expect(optimisation,isNotNull);
    optimisation.id = 'O456789';
    optimisation.titre = 'Optimiser les traitements de production';
    optimisation.priorite = 'Moyenne';
    demandes.add(optimisation);
  expect(demandes.length, equals(++nombreDemandes));

    var ameliorations = new Demande();
    expect(ameliorations,isNotNull);
    ameliorations.id = 'A123789';
    ameliorations.titre = 'Déployer les améliorations d\'encaissement';
    ameliorations.priorite = 'Basse';
    demandes.add(ameliorations);
  expect(demandes.length, equals(++nombreDemandes));


});

    tearDown(() {
      demandes.clear();
      expect(demandes.isEmpty, isTrue);
    });

    test('Toutes les demandes doivent avoir un identifiant unique', () {
      expect(demandes.every((p) => p.id != null), isTrue);
    });

    test('Sélection par id',(){
      var idRecherche = 'F123456';
      var demande = demandes.find(idRecherche);
      expect(demande,isNotNull);
      expect(demande.id, equals(idRecherche));
      demande.display('Sélection par id');
    });

    test('Demandes triées par id', () {
      demandes.orderByFunction((m,n) => m.compareTo(n));
      demandes.display('Demandes triées par id');
    });


    test ('Liste des demandes à priorité élevé', (){
      var demandeEleve = demandes.select((x) => x.Eleve);
      expect(demandeEleve.isEmpty, isFalse);
      expect(demandeEleve.length, equals(1));
      demandeEleve.display('Liste des demandes à priorité élevé');
  });
  });
}


initDisplayModel() {
  DemandeModel demandeModel = new DemandeModel();
  demandeModel.init();
  demandeModel.display();
}

testModel() {
  DemandeModel demandeModel = new DemandeModel();
  Demandes demandes = demandeModel.demandes;
  TestDemandes(demandes);
}

main() {
  testModel();
}