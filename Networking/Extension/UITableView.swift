//
//  UITableView.swift
//  Networking
//
//  Created by Muhksin Hilmi on 15/04/2018.
//  Copyright © 2018 Shinkan. All rights reserved.
//

import UIKit

extension UITableView{
    func registerCellClass(_ cellClass: AnyClass) {
        let identifier = String.className(cellClass)
        self.register(cellClass, forCellReuseIdentifier: identifier)
    }
}
