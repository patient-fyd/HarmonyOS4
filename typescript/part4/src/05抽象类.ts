(function (){
    /**
     * 抽象类 是专门用来被继承的，只是不能被实例化
     */
    abstract class Animal{
        name:string
        constructor(name:string){
            this.name = name
        }
        // 抽象方法，没有方法体
        // 只能定义在抽象类中，子类必须对抽象方法进行重写
        abstract sayHello():void;
    }
    class Dog extends Animal{
        age:number;
        // 如果在子类中写了构造函数，在子类构造函数中必须对父类构造函数调用
        constructor(name:string,age:number){
            super(name);
            this.age = age;
        }
        sayHello() {
            console.log("汪汪汪");
        }
    }
})();