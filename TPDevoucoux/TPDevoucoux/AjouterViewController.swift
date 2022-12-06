//
//  AjouterViewController.swift
//  TPDevoucoux
//
//  Created by Maxime Devoucoux on 05/12/2022.
//

import UIKit

class AjouterViewController: UIViewController {

    // initialisation de la fenetre
    override func viewDidLoad() {
        super.viewDidLoad()
        textNom.text = ""
        textDescription.text = ""
        
        // Do any additional setup after loading the view.
    }
    
    // récupère les données entrées par les utilisateurs
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (textNom.text!.count != 0) && (textDescription.text!.count != 0) {
            data = Todo(nom: textNom.text!, desc: textDescription.text!)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // outlets
    @IBOutlet weak var textNom: UITextField!
    @IBOutlet weak var textDescription: UITextField!
    
    var data: Todo?
}
