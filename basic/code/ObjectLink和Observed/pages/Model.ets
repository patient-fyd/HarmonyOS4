//对外暴露一个类Person
@Observed
export class Person {
  id: number
  name: string
  age: number

  constructor(id: number, name: string, age: number) {
    this.id = id;
    this.name = name;
    this.age = age;
  }
}