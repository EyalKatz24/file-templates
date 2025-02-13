//  ___FILEHEADER___

import SwiftUI
import ComposableArchitecture

extension ___VARIABLE_productName___Navigator {
    
    struct ContentView: View {
        
        @Perception.Bindable var store: StoreOf<___VARIABLE_productName___Navigator>
        
        var body: some View {
            WithPerceptionTracking {
                NavigationStack(
                    path: $store.scope(state: \.path, action: \.path),
                    root: {
                        ___VARIABLE_rootName___View(store: store.scope(state: \.root, action: \.root))
                    },
                    destination: { store in
                        WithPerceptionTracking {
                            switch store.case {
                                // Remove if you don't have any other module in this navigator
                            }
                        }
                    }
                )
                .fullScreenCover(
                    item: $store.scope(state: \.destination, action: \.destination),
                    content: { store in
                        WithPerceptionTracking {
                            switch store.case {
                                // Remove if you don't need any presentation
                            }
                        }
                    }
                )
            }
        }
    }
}
