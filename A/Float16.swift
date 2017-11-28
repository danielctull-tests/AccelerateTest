
import Accelerate

struct Float16 {

	fileprivate var value: UInt16

	init(_ float: Float) {

		var input = [float]
		var output: [UInt16] = [0]

		var source = vImage_Buffer(data: &input, height: 1, width: 1, rowBytes: MemoryLayout<Float>.size)
		var destination = vImage_Buffer(data: &output, height: 1, width: 1, rowBytes: MemoryLayout<UInt16>.size)

		vImageConvert_PlanarFtoPlanar16F(&source, &destination, 0)

		value = output[0]
	}
}

extension UInt16 {

	init(_ float16: Float16) {
		self = float16.value
	}
}
