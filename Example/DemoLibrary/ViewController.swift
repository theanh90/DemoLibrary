//
//  ViewController.swift
//  DemoLibrary
//
//  Created by theanh90 on 10/11/2020.
//  Copyright (c) 2020 theanh90. All rights reserved.
//

import UIKit
import DemoLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
		updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	// MARK: - Private method
	private func updateUI() {
		let redView = ColorView(frame: CGRect(x: 100, y: 400, width: 100, height: 100), color: UIColor.red)
		redView.cornerRadius = 20
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(gotoLibraryScreen))
        redView.addGestureRecognizer(tap)
        
		view.addSubview(redView)
	}
    
    @objc private func gotoLibraryScreen() {
        print("---xxx clicked")
        let dropIn = DropInComponent()
        dropIn.title = "ahihi"
        if let viewController = dropIn.mainVC {
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

