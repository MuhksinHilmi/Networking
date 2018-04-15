//
//  QuestionTableViewCell.swift
//  Networking
//
//  Created by Muhksin Hilmi on 15/04/2018.
//  Copyright © 2018 Shinkan. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
class var identifier: String { return String.className(self) }
    var label: UILabel = {
       return UILabel()
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.backgroundColor = .red
        label.constraintEntireSuperview(toView: self, value: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(model: QuestionModel) {
        label.text = model.question
    }
}
