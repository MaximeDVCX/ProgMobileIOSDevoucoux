//
//  File.swift
//  TPDevoucoux
//
//  Created by Maxime Devoucoux on 07/11/2022.
//

import Foundation

// classe qui représente une liste d'objets todo
class ToDoList {
    var _ToDoList : [Todo] = []
    var _nomListe = ""
    
    init(nomListe : String) {
        self._nomListe = nomListe
    }
    
    func addList( todo : Todo){
        _ToDoList.append(todo)
    }
    
    func setNomListe(nomListe : String) {
        self._nomListe = nomListe
    }
}
