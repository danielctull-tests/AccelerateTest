
@testable import A
import XCTest

final class Float16Tests: XCTestCase {

	func testZero() {
		let float = Float(0)
		let float16 = Float16(float)
		let unit16 = UInt16(float16)
		let binary = String(unit16, radix: 2)
		XCTAssertEqual(binary, "0")
	}
}
