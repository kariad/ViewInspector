import XCTest
import SwiftUI
@testable import ViewInspector

final class EmptyViewTests: XCTestCase {
    
    func testInspect() throws {
        XCTAssertNoThrow(try EmptyView().inspect())
    }
    
    func testExtractionFromSingleViewContainer() throws {
        let view = AnyView(EmptyView())
        XCTAssertNoThrow(try view.inspect().emptyView())
    }
    
    func testExtractionFromMultipleViewContainer() throws {
        let view = HStack {
            Text("")
            EmptyView()
            Text("")
            EmptyView()
        }
        XCTAssertNoThrow(try view.inspect().emptyView(1))
        XCTAssertNoThrow(try view.inspect().emptyView(3))
    }
}
