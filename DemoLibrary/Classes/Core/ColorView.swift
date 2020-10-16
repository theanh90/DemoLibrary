//
//  ColorView.swift
//  DemoLibrary
//
//  Created by anh bui on 10/16/20.
//

import UIKit

@IBDesignable
public class ColorView: UIView {
	
	public init(frame: CGRect, color: UIColor) {
		super.init(frame: frame)
		self.backgroundColor = color
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
	}
	
	@IBInspectable
	public var bgColor: UIColor? {
		didSet {
			self.backgroundColor = bgColor
		}
	}
	
	@IBInspectable
	public var cornerRadius: CGFloat = 0.0 {
		didSet {
			self.layer.masksToBounds = true
			self.layer.cornerRadius = cornerRadius
		}
	}
}
