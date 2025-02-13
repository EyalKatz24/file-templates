//  ___FILEHEADER___

import Dependencies

struct ___VARIABLE_productName___UseCase {
    var <#___VARIABLE_varName___#>: () <#async#> -> <#Void#>
}

extension ___VARIABLE_productName___UseCase: DependencyKey {
    static let liveValue = ___VARIABLE_productName___UseCase(
        ___VARIABLE_varName___: {
            
        }
    )
    
    static let testValue = ___VARIABLE_productName___UseCase(
        ___VARIABLE_varName___: {
            
        }
    )
}

extension DependencyValues {
    var ___VARIABLE_varName___: () <#async#> -> <#Void#> {
        get { self[___VARIABLE_productName___UseCase.self].___VARIABLE_varName___ }
        set { self[___VARIABLE_productName___UseCase.self].___VARIABLE_varName___ = newValue }
    }
}
