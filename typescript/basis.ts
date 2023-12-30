// 声明一个变量a,它的类型是number
let a: number;

// 在以后的使用中，a的类型只能是number
a = 10;

// 声明完变量直接进行赋值
let b: boolean = true;
// 如果声明和赋值是同时进行的，TS可以进行类型检测
let c = "hello";

// JS中的函数是不考虑参数的类型和个数的
function sum(a,b){
    return a + b;
}

console.log(sum(123, 456));
console.log(sum(123, "456"));

// TS中的函数可以进行类型检测
function sum2(a: number, b: number) : number{
    return a + b;
}