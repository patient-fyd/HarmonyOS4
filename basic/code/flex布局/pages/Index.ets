// flex布局：鸿蒙开发中不推荐使用
@Entry
@Component
struct Index {
  build() {
    // 容器
    Flex({ direction: FlexDirection.Row,justifyContent:FlexAlign.SpaceEvenly,alignItems:ItemAlign.Stretch }) {
      // 子元素：项目
      Row() {

      }
      .width(60)
      .height(60)
      .backgroundColor('#33D')

      Row() {

      }
      .width(60)
      .height(60)
      .backgroundColor('#3DD')

      Row() {

      }
      .width(60)
      .height(60)
      .backgroundColor('#D3D')

      Row() {

      }
      .width(60)
      .height(60)
      .backgroundColor('#3D3')
    }
    .width('100%')
    .height(300)
    .backgroundColor("#ccc")
  }
}
