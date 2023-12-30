// object 表示一个js对象
let a: object;
a = {};
a = function () {
};

// 用来指定对象中可以包含哪些属性
// 在属性名后加上？表示属性是可选的
let b: { name: string, age?: number };
b = {name: '张三', age: 20};

// [propName: string]: any 表示任意类型的属性
let c: { name: string, [propName: string]: any };
c = {name: '张三', age: 20, gender: 'male'};

/**
 * 设置函数结构声明：
 * （形参：类型，形参：类型）=> 返回值类型
 */
let d: (a: number, b: number) => number;
d = function (a, b) {
    return a + b
}

// 数组的类型声明,表示字符串数组
let e: string[];
e = ['a', 'b', 'c'];

let f: number[];
let g: Array<number>;
g = [1, 2, 3];

// 元组,就是固定长度的数组
let h: [number, string];
h = [1, '1'];

// enum 枚举
enum Gender {
    male,
    female,
    secret
}

let i: { name: string, gender: Gender };
i = {
    name: '张三',
    gender: Gender.male
};

let j: { name:string } | { age: number };

// 类型的别名
type myType = 1 | 2 | 3 | 4 | 5;
let k: myType;
