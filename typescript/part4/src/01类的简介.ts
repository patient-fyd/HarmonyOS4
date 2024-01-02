// 使用class关键字来定义一个类
/**
 * 对象中包含了两个部分
 *  属性  方法
 */
class Person {
    /**
     * 直接定义的属性是实例属性，需要通过对象的实例去访问
     *
     * 使用static开头的属性是静态属性，可以直接访问
     */
    name: string;
    constructor(message: string) {
        this.name = message
    }
    hello() {
        return "Hello, " + this.name;
    }

}
const g = new Person("ZhangSan").hello();
console.log(g);
