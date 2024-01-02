class Dog{
    name:string;
    age:number;

    constructor(name:string,age:number){
        this.name = name;
        this.age = age;
    }

    bark(){
        console.log("汪汪汪");
    }
}

const dog = new Dog("旺财",3);
const dog2 = new Dog("大黄",4);