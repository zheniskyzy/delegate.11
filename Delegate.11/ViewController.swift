//
//  ViewController.swift
//  Delegate.11
//
//  Created by Madina Olzhabek on 09.01.2024.
//

import UIKit

class ViewController: UIViewController, SelectCategoryProtocol {
  
    @IBOutlet weak var categoryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openModalView(_ sender: Any) {
        let modalview = storyboard?.instantiateViewController(withIdentifier: "ModalViewController") as! ModalViewController
        
        modalview.modalPresentationStyle = .overCurrentContext
        modalview.categoryArray = ["Food", "Clothing", "Electronics", "Other"]
        modalview.delegate = self
        present(modalview, animated: true,completion: nil)
    }
    
    func setCategory(_ category: String) {
        categoryButton.setTitle(category, for: .normal)
    }
    
}

