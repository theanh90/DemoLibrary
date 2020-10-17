//
//  DropInComponent.swift
//  DemoLibrary
//
//  Created by Anh The on 10/17/20.
//

import UIKit

public class DropInComponent {    
    public init() {}
    
    public var title: String?
    public var mainVC: DropInViewController? = {
        let bundle = Bundle(for: DropInViewController.self)
        let storyboard = UIStoryboard.init(name: "DropIn", bundle: bundle)
        return storyboard.instantiateViewController(withIdentifier: "DropInViewController") as? DropInViewController
    }()
}
