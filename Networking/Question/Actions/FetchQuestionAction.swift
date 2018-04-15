//
//  FetchQuestionAction.swift
//  Networking
//
//  Created by Muhksin Hilmi on 15/04/2018.
//  Copyright © 2018 Shinkan. All rights reserved.
//

import ReSwift

struct FetchQuestionAction: Action {
    let model: [QuestionModel?]
}

func fetchQuestion(state: MainState, store: Store<MainState>) -> FetchQuestionAction{
    NetworkAdapter.request(target: .question, success: { (response) in
        do {
            let decoder = JSONDecoder()
            let response: [QuestionModel] = try decoder.decode([QuestionModel].self, from: response.data)
            DispatchQueue.main.async {
                store.dispatch(FetchQuestionAction(model: response))
            }
        }catch {
            store.dispatch(RequestErrorAction(error: "parsing data failed"))
        }
    }, error: { (error) in
        
    }) { (moyaErro) in
        
    }
    
    return FetchQuestionAction(model: [])
}
