// ArkTS:TS与JS的超集
// 鸿蒙当中内置UI组件：Image->展示图片
@Entry
@Component
struct Index {
  build() {
    Column(){
      Text("真机测试1080px")
        .width('1228px')
        .height('200px')
        .backgroundColor(Color.Blue)
      Text('当前设备1VP多少px  ' + vp2px(1))
        .width(100)
        .height(50)
      Image($r('app.media.icon'))
        // px2vp: 像素转换从虚拟像素
        .width(px2vp(1228))

    }
  }
}