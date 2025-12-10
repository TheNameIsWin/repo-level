import XCTest

final class FailTest: XCTestCase {
    func testForceFail() {
        XCTFail("Forcing failure for CI test")
    }
}
