//  ___FILEHEADER___

import ComposableArchitecture
<#import ___VARIABLE_rootName___#>

@Reducer
public struct ___VARIABLE_productName___Navigator {
    
    @ObservableState
    public struct State: Equatable {
        var root: ___VARIABLE_rootName___Store.State
        var path = StackState<Path.State>()
        
        @Presents var destination: Destination.State?
        
        public init() {
            self.root = .init()
        }
    }
    
    public enum Action {
        case root(___VARIABLE_rootName___Store.Action)
        case path(StackAction<Path.State, Path.Action>)
        case destination(PresentationAction<Destination.Action>)
    }
    
    public init() { }
    
    public var body: some ReducerOf<Self> {
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
    public enum Path {

    }
    
    @Reducer(state: .equatable)
    public enum Destination {
        
    }
}
