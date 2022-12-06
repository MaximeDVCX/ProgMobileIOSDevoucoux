//
//  ViewController.swift
//  TPDevoucoux
//
//  Created by Maxime Devoucoux on 07/11/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData._ToDoList.count
    }
    
    // gestion du tableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell
        let row = indexPath.row
        cell.myLabelCell.text = myData._ToDoList[row]._nom
        cell.todo = myData._ToDoList[row]
        return cell
    }
    
    var myData = ToDoList(nomListe: "liste")   // objet liste
    
    // outlets
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var myButtonAdd: UIButton!
    
    // remplissage de la tableview au démarrage de l'app
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 1...10 {
            let nom = "nom " + String(i)
            let desc = "Ceci est la description " + String(i)
            let tache = Todo(nom: nom, desc: desc)
            myData.addList(todo: tache)
        }
        myTableView.dataSource = self
    }
    
    // permet de donner les infos à la vue de détail
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DetailViewController {
            let row = myTableView.indexPathForSelectedRow!.row
            vc.data = myData._ToDoList[row]
        }
    }
    
    // bouton permettant de supprimer une tache
    @IBAction func supprimer(_ unwindSegue: UIStoryboardSegue) {
        if unwindSegue.source is DetailViewController {
            let row = myTableView.indexPathForSelectedRow!.row
            myData._ToDoList.remove(at: row)
            myTableView.reloadData()
        }
    }

    // bouton permettant de valider la création de la tache
    @IBAction func valider(_ unwindSegue: UIStoryboardSegue) {
        if let vc = unwindSegue.source as? AjouterViewController {
            if let newTodo = vc.data {
                myData.addList(todo: newTodo)
                myTableView.reloadData()
            }
        }
    }
}

