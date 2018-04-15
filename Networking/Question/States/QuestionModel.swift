//
//  QuestionModel.swift
//  Networking
//
//  Created by Muhksin Hilmi on 15/04/2018.
//  Copyright © 2018 Shinkan. All rights reserved.
//

import Foundation

struct QuestionModel: Decodable {
    var question: String
    var published_at: String
    var choices: [String]
}
