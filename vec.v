module main

import math

pub type Vector<T> = Vec2<T> | Vec3<T> | Vec4<T>

pub struct VectorInit<T> {
pub:
	arr []T
	x T
	y T
	z T
	w T
}

pub struct Vec2<T> {
pub:
	x T
	y T
}

pub struct Vec3<T> {
pub:
	x T
	y T
	z T
}

pub struct Vec4<T> {
pub:
	x T
	y T
	z T
	w T
}

pub fn vec_init_c<T>(c ...T) VectorInit<T> {
	return match c.len {
		0, 1 {
			VectorInit<T> {}
		}
		2 {
			VectorInit<T>{
				x: c[0]
				y: c[1]
			}
		}
		3 {
			VectorInit<T>{
				x: c[0]
				y: c[1]
				z: c[2]
			}
		}
		else {
			VectorInit<T>{
				x: c[0]
				y: c[1]
				z: c[2]
				w: c[3]
			}
		}	
	}
}

pub fn vec_init_a<T>(c ...T) VectorInit<T> {
	return VectorInit<T>{ arr: c }
}

pub fn vec2<T>(init VectorInit<T>) Vec2<T> {
	if init.arr.len >= 2 {
		return Vec2<T>{
			x: init.arr[0]
			y: init.arr[1]
		}
	}
	return Vec2<T>{
		x: init.x
		y: init.y
	}
}

pub fn vec3<T>(init VectorInit<T>) Vec3<T> {
	if init.arr.len >= 3 {
		return Vec3<T> {
			x: init.arr[0]
			y: init.arr[1]
			z: init.arr[2]
		}
	}
	return Vec3<T> {
		x: init.x
		y: init.y
		z: init.z
	}
}

pub fn vec4<T>(init VectorInit<T>) Vec4<T> {
	if init.arr.len >= 4 {
		return Vec4<T> {
			x: init.arr[0]
			y: init.arr[1]
			z: init.arr[2]
			w: init.arr[3]
		}
	}
	return Vec4<T> {
		x: init.x
		y: init.y
		z: init.z
		w: init.w
	}
}

pub fn (a Vec2<T>) dim() int {
	return 2
}

pub fn (a Vec3<T>) dim() int {
	return 3
}

pub fn (a Vec4<T>) dim() int {
	return 4
}

// Vec2
pub fn (a Vec2<T>) + (b Vec2<T>) Vec2<T> {
	return vec2(arr: add(a.to_arr(), b.to_arr()))
}

pub fn (a Vec2<T>) - (b Vec2<T>) Vec2<T> {
	return vec2(arr: sub(a.to_arr(), b.to_arr()))
}

pub fn (vec Vec2<T>) mult(skalar T) Vec2<T> {
	return vec2(arr: mult(vec.to_arr(), skalar))
}

pub fn (vec Vec2<T>) div(skalar T) Vec2<T> {
	return vec2(arr: div(vec.to_arr(), skalar))
}

pub fn (vec Vec2<T>) dot(b Vec2<T>) T {
	return dot(vec.to_arr(), b.to_arr())
}

pub fn (vec Vec2<T>) cross(b Vec2<T>) Vec2<T> {
	return vec2(arr: cross(vec.to_arr(), b.to_arr()))
}

pub fn (vec Vec2<T>) length() T {
	return length(vec.to_arr())
}

pub fn (vec Vec2<T>) normalize() Vec2<T> {
	return vec2(arr: normalize(vec.to_arr()))
}

pub fn (vec Vec2<T>) inverse() Vec2<T> {
	return vec2(arr: inverse(vec.to_arr()))
}

pub fn (vec Vec2<T>) angle(b Vec2<T>) f64 {
	return angle(vec.to_arr(), b.to_arr())
}

pub fn (vec Vec2<T>) str() string {
	return str(vec.to_arr())
}

// Vec3
pub fn (a Vec3<T>) + (b Vec3<T>) Vec3<T> {
	return vec3(arr: add(a.to_arr(), b.to_arr()))
}

pub fn (a Vec3<T>) - (b Vec3<T>) Vec3<T> {
	return vec3(arr: sub(a.to_arr(), b.to_arr()))
}

pub fn (vec Vec3<T>) mult(skalar T) Vec3<T> {
	return vec3(arr: mult(vec.to_arr(), skalar))
}

pub fn (vec Vec3<T>) div(skalar T) Vec3<T> {
	return vec3(arr: div(vec.to_arr(), skalar))
}

pub fn (vec Vec3<T>) dot(b Vec3<T>) T {
	return dot(vec.to_arr(), b.to_arr())
}

pub fn (vec Vec3<T>) cross(b Vec3<T>) Vec3<T> {
	return vec3(arr: cross(vec.to_arr(), b.to_arr()))
}

pub fn (vec Vec3<T>) length() T {
	return length(vec.to_arr())
}

pub fn (vec Vec3<T>) normalize() Vec3<T> {
	return vec3(arr: normalize(vec.to_arr()))
}

pub fn (vec Vec3<T>) inverse() Vec3<T> {
	return vec3(arr: inverse(vec.to_arr()))
}

pub fn (vec Vec3<T>) angle(b Vec3<T>) f64 {
	return angle(vec.to_arr(), b.to_arr())
}

pub fn (vec Vec3<T>) str() string {
	return str(vec.to_arr())
}

// Vec4
pub fn (a Vec4<T>) + (b Vec4<T>) Vec4<T> {
	return vec4(arr: add(a.to_arr(), b.to_arr()))
}

pub fn (a Vec4<T>) - (b Vec4<T>) Vec4<T> {
	return vec4(arr: sub(a.to_arr(), b.to_arr()))
}

pub fn (vec Vec4<T>) mult(skalar T) Vec4<T> {
	return vec4(arr: mult(vec.to_arr(), skalar))
}

pub fn (vec Vec4<T>) div(skalar T) Vec4<T> {
	return vec4(arr: div(vec.to_arr(), skalar))
}

pub fn (vec Vec4<T>) dot(b Vec4<T>) T {
	return dot(vec.to_arr(), b.to_arr())
}

pub fn (vec Vec4<T>) cross(b Vec4<T>) Vec4<T> {
	return vec4(arr: cross(vec.to_arr(), b.to_arr()))
}

pub fn (vec Vec4<T>) length() T {
	return length(vec.to_arr())
}

pub fn (vec Vec4<T>) normalize() Vec4<T> {
	return vec4(arr: normalize(vec.to_arr()))
}

pub fn (vec Vec4<T>) inverse() Vec4<T> {
	return vec4(arr: inverse(vec.to_arr()))
}

pub fn (vec Vec4<T>) angle(b Vec4<T>) f64 {
	return angle(vec.to_arr(), b.to_arr())
}

pub fn (vec Vec4<T>) str() string {
	return str(vec.to_arr())
}

// Arrays
pub fn (vec Vec2<T>) to_arr() []T {
	return [vec.x, vec.y]
}

pub fn (vec Vec3<T>) to_arr() []T {
	return [vec.x, vec.y, vec.z]
}

pub fn (vec Vec4<T>) to_arr() []T {
	return [vec.x, vec.y, vec.z, vec.w]
}

// Vector convert
pub fn (vec Vec2<T>) to_vec3(z T) Vec3<T> {
	return vec3(x: vec.x, y: vec.y, z: z)
}

pub fn (vec Vec2<T>) to_vec4(z T, w T) Vec4<T> {
	return vec4(x: vec.x, y: vec.y, z: z, w: w)
}

pub fn (vec Vec3<T>) to_vec4(w T) Vec4<T> {
	return vec4(x: vec.x, y: vec.y, z: vec.z, w: w)
}

pub fn (vec Vec3<T>) to_vec2() Vec2<T> {
	return vec2(x: vec.x, y: vec.y)
}

pub fn (vec Vec4<T>) to_vec2() Vec2<T> {
	return vec2(x: vec.x, y: vec.y)
}

pub fn (vec Vec4<T>) to_vec3() Vec3<T> {
	return vec3(x: vec.x, y: vec.y, z: vec.z)
}

// Vector functions
fn dot<T>(a []T, b []T) T {
	mut num := T{}
	for i in 0..a.len {
		if i >= b.len {
			continue
		}
		num += a[i] * b[i]
	}
	return num
}

fn cross<T>(a []T, b []T) []T {
	if a.len != b.len {
		return []T{}
	}


	mut res := []T{}

	mut i := 1
	mut x := 2

	for {
		res << a[i] * b[x] - a[x] * b[i]

		i++
		x++

		if i >= a.len {
			i = 0
		}
		if x >= a.len {
			x = 0
		}
		if res.len >= a.len {
			break
		}
	}

	return res
}

fn length<T>(a []T) T {
	mut b := T{}
	for d in a {
		b += math.pow(d, 2)
	}
	return T(math.sqrt(b))
}

fn normalize<T>(a []T) []T {
	l := T(1) / length(a)
	mut res := a.clone()
	for i, d in res {
		res[i] = l * d
	}
	return res
}

fn inverse<T>(a []T) []T {
	return mult(a, T(-1))
}

fn add<T>(a []T, b []T) []T {
	if a.len != b.len {
		return []T{}
	}

	mut res := []T{}
	for i in 0..a.len {
		res << a[i] + b[i]
	}

	return res
}

fn sub<T>(a []T, b []T) []T {
	return add(a, mult(b, T(-1)))
}

fn mult<T>(a []T, skalar T) []T {
	mut res := a.clone()

	for i, d in res {
		res[i] = d * skalar
	}

	return res
}

fn div<T>(a []T, skalar T) []T {
	return mult(a, T(1) / skalar)
}

fn angle<T>(a []T, b []T) f64 {
	if a.len != b.len {
		return 0.0
	}

	return math.acos(dot(a, b) / (length(a) * length(b)))
}

fn str<T>(a []T) string {
	return a.str()
}

// Util
pub fn rad(deg f64) f64 {
	return deg * (math.pi / 180)
}

pub fn deg(rad f64) f64 {
	return rad * (180 / math.pi)
}
