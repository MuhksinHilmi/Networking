//
//  QuestionReducer.swift
//  Networking
//
//  Created by Muhksin Hilmi on 15/04/2018.
//  Copyright © 2018 Shinkan. All rights reserved.
//

import ReSwift

func questionReducer(actions: Action, state: QuestionState?) -> QuestionState {
    var state = state ?? QuestionState(questionModel: [])
    switch actions {
    case let action as FetchQuestionAction:
        state.questionModel = action.model
    default:
        break
    }
    return state
}
