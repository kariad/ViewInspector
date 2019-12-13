import SwiftUI

internal extension ViewType {
    struct EquatableView { }
}

// MARK: - Content Extraction

extension ViewType.EquatableView: SingleViewContent {
    
    static func content(view: Any, envObject: Any) throws -> Any {
        let view = try Inspector.attribute(label: "content", value: view)
        return try Inspector.unwrap(view: view)
    }
}
