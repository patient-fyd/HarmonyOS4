"use strict";
// 使用class关键字来定义一个类
/**
 * 对象中包含了两个部分
 *  属性  方法
 */
class Person {
    constructor(message) {
        this.name = message;
    }
    hello() {
        return "Hello, " + this.name;
    }
}
const g = new Person("ZhangSan").hello();
console.log(g);
