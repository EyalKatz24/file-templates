//  ___FILEHEADER___

import Foundation
import ComposableArchitecture

@Reducer
struct ___VARIABLE_productName___Store {
    
    @ObservableState
    struct State: Equatable {
        
    }
    
    enum Action: ViewAction {
        enum View {
            
        }
        
        enum Navigation {
            
        }
        
        case view(View)
        case navigation(Navigation)
    }
    
    @Dependency(\.interactor) private var interactor
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case let .view(action):
                return reduceViewAction(&state, action)
                
            case .navigation:
                return .none
            }
        }
    }
    
    private func reduceViewAction(_ state: inout State, _ action: Action.View) -> Effect<Action> {
        switch action {
            
        }
    }
}

extension DependencyValues {
    fileprivate var interactor: ___VARIABLE_productName___Interactor {
        get { self[___VARIABLE_productName___Interactor.self] }
    }
}
