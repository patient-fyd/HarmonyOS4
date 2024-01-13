// 组件状态管理
import Child from '../Views/Child'
import Child1 from '../Views/Child1';

@Entry
@Component
struct Index {
  // 定义组件内的状态
  @State count: number = 1;
  @State count1:number = 1;

  build() {
    Column() {
      Flex({ direction: FlexDirection.Column }) {
        Text('state count：' + this.count).fontSize(20)
        Text('state count1：' + this.count1).fontSize(20)
        Button('Prop+1').onClick((event: ClickEvent) => {
          this.count++;
        })
        Button('Link+1').onClick((event: ClickEvent) => {
          this.count1++;
        })


        //自定义组件:父给子传递参数 ---Prop
        Child({ count: this.count })
        // 自定义组件:父给子传递参数 ---Link
        Child1({count1:$count1})
      }
    }
    .margin(20)
    .width('100%')
  }
}
