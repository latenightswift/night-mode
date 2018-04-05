//
//  FirstViewController.swift
//  Night Mode
//
//  Created by Michael on 01/04/2018.
//  Copyright © 2018 Late Night Swift. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
	@IBOutlet private var titleLabel: UILabel!
	@IBOutlet private var subtitleLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		setUpTheming()
	}

	@IBAction func toggleThemeActionTriggered() {
		themeProvider.nextTheme()
	}
}

extension FirstViewController: Themed {
	func applyTheme(_ theme: AppTheme) {
		view.backgroundColor = theme.backgroundColor
		titleLabel.textColor = theme.textColor
		subtitleLabel.textColor = theme.textColor
	}
}
