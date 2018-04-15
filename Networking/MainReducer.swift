//
//  MainReducer.swift
//  Networking
//
//  Created by Muhksin Hilmi on 15/04/2018.
//  Copyright © 2018 Shinkan. All rights reserved.
//

import ReSwift

func mainReducer(action: Action, state: MainState?) -> MainState {
    return MainState(
        questionState: questionReducer(actions: action, state: state?.questionState)
    )
}
