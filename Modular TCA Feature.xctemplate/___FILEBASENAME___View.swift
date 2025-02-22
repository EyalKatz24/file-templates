//  ___FILEHEADER___

import SwiftUI
import ComposableArchitecture
<#import DesignSystem#>

@ViewAction(for: ___VARIABLE_productName___Store.self)
public struct ___VARIABLE_productName___View: View {
    
    @Bindable public var store: StoreOf<___VARIABLE_productName___Store>
    
    public init(store: StoreOf<___VARIABLE_productName___Store>) {
        self.store = store
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            Text("___VARIABLE_productName___")
        }
        .font(.largeTitle)
        .onAppear {
            send(.onAppear)
        }
    }
}

#Preview {
    NavigationStack {
        ___VARIABLE_productName___View(
            store: Store(
                initialState: ___VARIABLE_productName___Store.State(),
                reducer: ___VARIABLE_productName___Store.init
            )
        )
    }
}
