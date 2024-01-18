//ObjectLink与Observed！！！
import { Person } from './Model';
import Item from './Item';

@Entry
@Component
struct Index {
  //父组件数据
  @State userArr: Person[] = [new Person(1, '小明', 18), new Person(2, '小强', 19)]

  build() {
    Column() {
      Text(JSON.stringify(this.userArr)).onClick(() => {
      })
      Button('更新数据').onClick((event: ClickEvent) => {
        this.userArr[0].age++;
      })
      //@Prop|@Link,确实可以接受父组件传递过来的数据 --->State
      ForEach(this.userArr, (item: Person, index: number) => {
        Item({ item: item });
      })
    }
    .width('100%')
    .padding(20)
  }
}