module main

fn main() {
	eprintln('abc')
	mut aMat := mat<f32>([1, 0], [2, 1], [3, 0])
	mut bMat := mat<f32>([0, 1, 1], [1, -1, 3], [2, 0, 0], [0, 2, 0])

	eprintln(aMat)
	eprintln(bMat)

	mut cMat := aMat * bMat

	eprintln(cMat)
}
