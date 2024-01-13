// 网格布局
@Entry
@Component
struct Index {
  build() {
    // 网格布局 里面必须是GridItem
    Grid() {
      GridItem()
        .backgroundColor('#33d')
        // 会把最后一个挤走
        .rowStart(1)
        .rowEnd(2)

      GridItem()
        .backgroundColor('#3dd')

      GridItem()
        .backgroundColor('#d3d')

      GridItem()
        .backgroundColor('#3d3')

      GridItem()
        .backgroundColor('#33d')

      GridItem()
        .backgroundColor('#3dd')

      GridItem()
        .backgroundColor('#d3d')

      GridItem()
        .backgroundColor('#3d3')

      GridItem()
        .backgroundColor('#33d')


    }
    .width('100%')
    .height(500)
    .backgroundColor("#ccc")
    .rowsTemplate('1fr 1fr 1fr')
    .columnsTemplate('1fr 1fr 1fr')
    .rowsGap(5)
    .columnsGap(5)
  }
}
