//
//  WebsiteViewController.swift
//  M10Bar
//
//  Created by Mesplay, Harrison W. on 4/27/26.
//

import UIKit

class WebsiteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? WebDisplayViewController {
            if let button = sender as? UIButton {
                switch button.tag {
                case 1:
                    destination.websiteURL = "https://www.cdc.gov/healthyweight"
                case 2:
                    destination.websiteURL = "https://www.fns.usda.gov/tn/myplate"
                case 3:
                    destination.websiteURL = "https://www.who.int/health-topics/obesity"
                default:
                    break
                }
            }
        }
    }

}
