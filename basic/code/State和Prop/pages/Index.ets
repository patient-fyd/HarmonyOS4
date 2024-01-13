// 组件状态管理
import Child from '../Views/Child'

@Entry
@Component
struct Index {
  // 定义组件内的状态
  @State count: number = 1;

  build() {
    Column({ space: 20 }) {
      Flex({ direction: FlexDirection.Column }) {
        Text('计数器：' + this.count).fontSize(20)
        Button('点击我+1').onClick((event: ClickEvent) => {
          this.count++;
        })

        //自定义组件:父给子传递参数
        Child({ count: this.count })
      }
    }
    .width('100%')
  }
}
