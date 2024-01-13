// 网格布局
@Entry
@Component
struct Index {
  build() {
    // 网格布局 里面必须是GridItem
    Grid() {
      GridItem() {

      }
      .width('25%')
      .height(100)
      .backgroundColor('#33d')

      GridItem() {

      }
      .width('25%')
      .height(100)
      .backgroundColor('#d3d')

      GridItem() {

      }
      .width('25%')
      .height(100)
      .backgroundColor('#d33')

      GridItem() {

      }
      .width('25%')
      .height(100)
      .backgroundColor('#dd3')

      GridItem() {

      }
      .width('25%')
      .height(100)
      .backgroundColor('#33d')

      GridItem() {

      }
      .width('25%')
      .height(100)
      .backgroundColor('#d3d')

      GridItem() {

      }
      .width('25%')
      .height(100)
      .backgroundColor('#d33')

      GridItem() {

      }
      .width('25%')
      .height(100)
      .backgroundColor('#dd3')
    }
    .width('100%')
    .height(400)
    .backgroundColor("#ccc")
    .rowsTemplate('1fr')
    .rowsGap(10)
    .columnsGap(10)

  }
}
