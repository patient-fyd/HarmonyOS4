(
    function (){
        class Animal{
            name:string
            constructor(name:string){
                this.name = name
            }
            eat(){
                console.log("吃东西")
            }
        }
        class Dog extends Animal{
            age:number;
            // 如果在子类中写了构造函数，在子类构造函数中必须对父类构造函数调用
            constructor(name:string,age:number){
                super(name);
                this.age = age;
            }
            eat() {
                super.eat();
            }

            bark(){
                console.log("汪汪汪")
            }
        }
        const dog = new Dog("旺财",3)
        console.log(dog);
        dog.bark();
        dog.eat();
    }
)();