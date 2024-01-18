import {Person} from './Model';
@Component
export default struct Item {
  @ObjectLink item:Person
  build() {
    Column(){
      Text('子组件' + JSON.stringify(this.item));
      Button('更新数据').onClick(()=>{
        this.item.age+=6;
      })
    }
    .width('100%')
    .padding(20)
    .border({width:1,color:Color.Red})
    .margin({top:10})
  }
}