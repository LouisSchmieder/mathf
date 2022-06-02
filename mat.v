module main

pub struct Matrix<T> {
	width int
	height int
mut:
	data [][]T
}

pub fn mat<T>(data ...[]T) Matrix<T> {
	return Matrix<T>{
		width: data.len
		height: data[0].len
		data: data
	}
}

pub fn (mut mat Matrix<T>) get(x int, y int) T {
	return mat.data[x][y]
}

pub fn (mut mat Matrix<T>) set(x int, y int, data T) {
	mat.data[x][y] = data
}

pub fn (mat Matrix<T>) get_row(y int) []T {
	mut arr := []T{len: mat.width}
	for x in 0..mat.width {
		arr[x] = mat.get(x, y)
	}
	return arr
}

pub fn (mat Matrix<T>) get_column(x int) []T {
	return mat.data[x]
}

pub fn (mat Matrix<T>) * (b Matrix<T>) Matrix<T> {
	mut m := [][]T{}
	if mat.height != b.width {
		return Matrix<T>{}
	}
	for x in 0..b.width {
		bArr := b.get_column(x)
		for y in 0..mat.height {
			arr := mat.get_row(y)
			m[x][y] = dot(bArr, arr)
		}
	}
	return mat(m)
}