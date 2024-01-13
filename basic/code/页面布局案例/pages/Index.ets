// 页面布局案例
@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {

        Image($rawfile('ic_bluetooth.png'))
          .width(30)
          .height(30)
        Text('蓝牙')
          .fontSize(20)
          .padding(5)
        Blank()
        Toggle({ type:ToggleType.Switch })

      }
      .width('100%')
      .height(60)
      .backgroundColor(Color.White)
      .padding({ left: 10, right: 10 })
      .borderRadius(15)

    }
    .width('100%')
    .height('100%')
    .padding(10)
    .backgroundColor('#E9E9E8')
  }
}
