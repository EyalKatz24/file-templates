//  ___FILEHEADER___

import ComposableArchitecture

@Reducer
struct ___VARIABLE_productName___Navigator {
    
    @ObservableState
    struct State: Equatable {
        var root: ___VARIABLE_rootName___Store.State
        var path = StackState<Path.State>()
        
        @Presents var destination: Destination.State?
        
        init() {
            // Delete this initializer when you don't need initial dependencies
            self.root = .init()
        }
    }
    
    enum Action {
        case root(___VARIABLE_rootName___Store.Action)
        case path(StackAction<Path.State, Path.Action>)
        case destination(PresentationAction<Destination.Action>)
    }
    
    var body: some ReducerOf<Self> {
        Scope(state: \.root, action: \.root, child: ___VARIABLE_rootName___Store.init)
        
        Reduce { state, action in
            switch action {
            case .root, .path, .destination:
                return .none
            }
        }
        .forEach(\.path, action: \.path)
        .ifLet(\.$destination, action: \.destination)
    }
}

extension ___VARIABLE_productName___Navigator {
    
    @Reducer(state: .equatable, action: .equatable)
    enum Path {

    }
    
    @Reducer(state: .equatable)
    enum Destination {
        
    }
}
