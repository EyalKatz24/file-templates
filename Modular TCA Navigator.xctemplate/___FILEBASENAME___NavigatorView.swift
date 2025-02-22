//  ___FILEHEADER___

import SwiftUI
import ComposableArchitecture
<#import ___VARIABLE_rootName___#>
<#import DesignSystem#>

extension ___VARIABLE_productName___Navigator {
    
    struct ContentView: View {
        
        @Bindable public var store: StoreOf<___VARIABLE_productName___Navigator>
        
        public init(store: StoreOf<___VARIABLE_productName___Navigator>) {
            self.store = store
        }
        
        public var body: some View {
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
