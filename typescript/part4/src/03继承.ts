(function (){
    class Animal{
        name:string
        age:number
        constructor(name:string,age:number){
            this.name = name
            this.age = age
        }
        eat(){
            console.log("吃东西")
        }
    }
    class Dog extends Animal{
        bark(){
            console.log("汪汪汪")
        }
    }
    const dog = new Dog("旺财",3)
    console.log(dog);
    dog.bark();
    dog.eat();
})();