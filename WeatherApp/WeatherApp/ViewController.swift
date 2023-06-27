//
//  ViewController.swift
//  WeatherApp
//
//  Created by Vahap Karaağaç on 26.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.layer.cornerRadius = 6
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        textfield.text = ""
    }
    
    @IBAction func btn(_ sender: UIButton) {
        
        let city = textfield.text ?? ""
        
        if city.isEmpty{
            let alert = UIAlertController(title: "UYARI", message: "Lütfen Şehir Adı Giriniz!", preferredStyle: .alert)
            
            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alert.addAction(cancelButton)
            
            self.present(alert, animated: true, completion: nil)
        }else {
            
            let vc = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
            
            vc.city = city
            
            self.show(vc , sender: nil)
            
        }
    }
    
}

