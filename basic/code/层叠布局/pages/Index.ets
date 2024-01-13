// 层叠布局
@Entry
@Component
struct Index {
  build() {
    Stack(){
      // 子元素
      Row(){
        Text('元素1')
      }
      .width(300)
      .height(300)
      .backgroundColor('#36D')
      // 数值越大越往上，默认为零
      .zIndex(20)

      Row(){
        Text('元素2')
      }
      .width(200)
      .height(200)
      .backgroundColor('#30D')

      Row(){
        Text('元素3')
      }
      .width(100)
      .height(100)
      .backgroundColor('#25D')
    }
    .width('100%')
    .height(400)
    .backgroundColor('#ccc')
    .alignContent(Alignment.Center)
  }
}
