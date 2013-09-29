part of dartlero_example;

class DemandeModel extends ConceptModel{
  
  static final String demande = 'demande';

  Map<String, ConceptEntities> newEntries() {
    var demandes = new Demandes();
    var map = new Map<String, ConceptEntities>();
    map[demande] = demandes;
    return map;
}
  
  Demandes get demandes => getEntry(demande);
  
  init()
  {
    var projetfact = new Demande();
    projetfact.id = 'F123456';
    projetfact.titre = 'Réaliser le projet de facturation';
    projetfact.priorite = 'Eleve';
    demandes.add(projetfact);
    
    var optimisation = new Demande();
    optimisation.id = 'O456789';
    optimisation.titre = 'Optimiser les traitements de production';
    optimisation.priorite = 'Moyenne';
    demandes.add(optimisation);
    
    var ameliorations = new Demande();
    ameliorations.id = 'D123789';
    ameliorations.titre = 'Déployer les améliorations d\'encaissement';
    ameliorations.priorite = 'Basse';
    demandes.add(ameliorations);
  }
  
  display()
  {
    print('Demande Model');
    print('=============');
    demandes.display('Demandes');
    print(
      '============= ============= ============= '
      '============= ============= ============= '
    );
  }
  
}