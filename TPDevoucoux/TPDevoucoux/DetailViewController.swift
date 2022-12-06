//
//  DetailViewController.swift
//  TPDevoucoux
//
//  Created by Maxime Devoucoux on 29/11/2022.
//

import UIKit

class DetailViewController: UIViewController {
    // initialisation de la vue
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let task = data {    // affichae des données et changement de couleur en fonction de la variable
            taskTitle.text = task._nom
            taskDescription.text = task._desc
            if task._fait == true {
                taskStatut.text = "Fait"
                taskStatut.textColor = UIColor.green
            }
            if task._fait == false {
                taskStatut.text = "Non fait"
                taskStatut.textColor = UIColor.red
            }
        }
        
        else {
            taskTitle.text = "ERROR"
            taskDescription.text = "ERROR"
        }
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var taskTitle: UILabel!
    @IBOutlet weak var taskDescription: UILabel!
    @IBOutlet weak var taskStatut: UILabel!
    
    var data: Todo?
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
