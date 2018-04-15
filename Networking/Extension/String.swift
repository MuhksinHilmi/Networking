//
//  String.swift
//  Networking
//
//  Created by Muhksin Hilmi on 15/04/2018.
//  Copyright © 2018 Shinkan. All rights reserved.
//

import UIKit

extension String {
    static func className(_ aClass: AnyClass) -> String {
        return NSStringFromClass(aClass).components(separatedBy: ".").last!
    }
}
