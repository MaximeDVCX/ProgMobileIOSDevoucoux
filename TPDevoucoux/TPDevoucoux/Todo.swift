//
//  File.swift
//  TPDevoucoux
//
//  Created by Maxime Devoucoux on 07/11/2022.
//

import Foundation

// objet todo qui se compose d'un nom d'une description et d'une variable bool pour son état
class Todo {
    var _nom = ""
    var _desc = ""
    var _fait = false
    
    init(nom : String, desc : String) {
        self._fait = false
        self._desc = desc
        self._nom = nom
    }
    
    func setName(nom : String) {
        self._nom = nom
    }
    
    func setDesc(desc : String) {
        self._desc = desc
    }
    
    func setFait(fait : Bool){
        self._fait = fait
    }
}

