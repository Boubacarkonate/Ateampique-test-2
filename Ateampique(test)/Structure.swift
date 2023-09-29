//
//  Structure.swift
//  Ateampique(test)
//
//  Created by Apprenant79 on 18/09/2023.
//

import SwiftUI
struct Projet: Identifiable  {
//    static func == (lhs: Projet, rhs: Projet) -> Bool {
//        return lhs.titre == rhs.titre && lhs.objectif == rhs.objectif
//    }
    
    var id = UUID()
    var titre : String
    var objectif : String
    var objectifdate = Date()
    var progression : Int
    var timer : Double
    var calendrier = Date()
    var imageCouverture : String = "AjouterImage"
    var methodesDuProjet:[Methodes]
    var mediasDuProjet:[Medias]
    var projetTermine: String
    
    func ajouterProjet() {
        
        var projetVide =  [Projet]()
       
        let projetPlus = Projet(titre: titre, objectif: objectif, progression: progression, timer: timer, imageCouverture: imageCouverture, methodesDuProjet: [], mediasDuProjet: [], projetTermine: projetTermine)
        
        projetVide.append(projetPlus)
    }
}

struct Methodes {
    var methode: Bool = false
    var timer5: Double
    var timer25: Double
    var bruitsBlancs: String 
    var imageMethode: String
    var descriptifMethode: String
    var mpomo : Bool = false
}

struct Medias {
    var mediasChoisi : Bool = false
    var mesNotes : [String]
    var mesAudios : String
}

var pomodoro = Methodes(timer5: 5, timer25: 25, bruitsBlancs: "", imageMethode: "", descriptifMethode: "")
var notes = Medias(mesNotes: [""], mesAudios: "")
var egypteAntique = Projet(titre: "EGYPTE ANTIQUE", objectif: "Maîtrise", progression: 0, timer: 0, imageCouverture: "Egypte", methodesDuProjet: [pomodoro], mediasDuProjet: [notes], projetTermine: "")
var projetTest = Projet(titre: "STANLEY KUBRICK", objectif: "test", progression: 0, timer: 0, imageCouverture: "Shining", methodesDuProjet: [pomodoro], mediasDuProjet: [notes], projetTermine: "")
var projetPi = Projet(titre: "NOMBRE PI", objectif: "test", progression: 0, timer: 0, imageCouverture: "Pi", methodesDuProjet: [pomodoro], mediasDuProjet: [notes], projetTermine: "")
var projetSolfege = Projet(titre: "SOLFEGE", objectif: "test", progression: 0, timer: 0, imageCouverture: "Solfège", methodesDuProjet: [pomodoro], mediasDuProjet: [notes], projetTermine: "")
var projetJaponais = Projet(titre: "JAPONAIS", objectif: "test", progression: 0, timer: 0, imageCouverture: "Japonnais", methodesDuProjet: [pomodoro], mediasDuProjet: [notes], projetTermine: "")
var projetArchéologieCinema = Projet(titre: "CINEMA PRIMITIF", objectif: "test", progression: 0, timer: 0, imageCouverture: "Melies", methodesDuProjet: [pomodoro], mediasDuProjet: [notes], projetTermine: "")
var projetCouture = Projet(titre: "COUTURE", objectif: "test", progression: 0, timer: 0, imageCouverture: "Couture", methodesDuProjet: [pomodoro], mediasDuProjet: [notes], projetTermine: "")
var projetCode = Projet(titre: "SWIFT", objectif: "test", progression: 0, timer: 0, imageCouverture: "Swift", methodesDuProjet: [pomodoro], mediasDuProjet: [notes], projetTermine: "")
var projetAnglais = Projet(titre: "ANGLAIS", objectif: "test", progression: 0, timer: 0, imageCouverture: "Japonnais", methodesDuProjet: [pomodoro], mediasDuProjet: [notes], projetTermine: "")
var projetHistoireArt = Projet(titre: "HISTOIRE DE L'ART", objectif: "test", progression: 0, timer: 0, imageCouverture: "Art", methodesDuProjet: [pomodoro], mediasDuProjet: [notes], projetTermine: "")






struct Utilisateur {
        let prenom: String
        let nom: String
        let dateNaissance: String
        var projetsEnCours: String
        var projetsFinalises : String
        
}


//var listeDesProjets : [Projet] = [egypteAntique, projetTest]


