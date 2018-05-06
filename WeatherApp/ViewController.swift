//
//  ViewController.swift
//  WeatherApp
//
//  Created by Jalil Hashemi on 06.05.18.
//  Copyright © 2018 Jalil Hashemi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dayTimeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // In Abhaengigkeit zu aktuellen Tageszeit Bild anzeigen
        let hour = Calendar.current.component(.hour, from: Date())
        
        switch hour {
        case 0...6:
            dayTimeImageView.image = UIImage(named: "Blood")
        case 7...19:
            dayTimeImageView.image = UIImage(named: "Sun")
        case 19...22:
            dayTimeImageView.image = UIImage(named: "Moon")
        default:
            dayTimeImageView.image = UIImage(named: "Blood")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

