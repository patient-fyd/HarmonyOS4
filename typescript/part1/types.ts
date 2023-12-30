// 可以直接使用字面量进行类型声明
let a: 10;
//a = 11;  //TS2322: Type 11 is not assignable to type 10

// 可以使用 | 来连接多个类型（联合类型）
let b: "male" | "female";
b = "male";
b = "female";

// any表示的是任意类型，相当于关闭了TS的类型检测。不建议使用
// any 可以赋值给任意变量
let d: any;
d = 10;
d = "hello";

// unknown表示的是未知类型
// unknown 是一个类型安全的any,不能直接赋值给其他变量
let e: unknown;
e = 10;
e = "hello";

let s: string;

// 做一个判断
if (typeof e === "string") {
    s = e;
}
// 类型断言，告诉解析器变量的实际类似
s = e as string;
s = <string>e;

// void表示为空，表示没有返回值
function fn():void {

}

// never 表示永远不会返回结果
function error():never {
    throw new Error("报错了");
}
