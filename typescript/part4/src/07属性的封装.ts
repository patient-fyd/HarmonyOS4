(function () {
    // 定义一个表示人的类
    class Person {
        /**
         * TS可以在属性前添加属性的修饰符
         *      public 修饰的属性可以在任意位置修改
         *      private 修饰的属性只能在类内部进行访问
         *      protected 修饰的属性只能在当前类和当前类的子类中进行访问
         */
        private _name: string;
        private _age: number;
        constructor(name: string, age: number) {
            this._name = name;
            this._age = age;
        }


        get name(): string {
            return this._name;
        }

        set name(value: string) {
            this._name = value;
        }

        get age(): number {
            return this._age;
        }

        set age(value: number) {
            if (value < 0) {
                throw new Error("年龄不能为负数");
            }else {
                this._age = value;
            }
        }

        sayHi() {
            console.log(`My name is ${this._name}.`);
        }
    }

    const per = new Person("张三", 18);
    per.age = 20;
    per.name = "李四";
    console.log(per);

    class A{
        // 可以直接在属性定义到构造函数中，语法糖
        constructor(public name:string,public age:number){

        }
    }


})();