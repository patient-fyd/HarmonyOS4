// 列表组件
@Entry
@Component
struct Index {
  build() {
    List() {
      ListItem() {
        Text('list1')
      }
      .width('100%')
      .height(40)
      .backgroundColor('#33d')

      ListItemGroup() {
        ListItem() {
          Text('list2')
        }
        .height(40)
        .width('100%')
        .backgroundColor('#d3d')

        ListItem() {
          Text('list3')
        }
        .height(40)
        .width('100%')
        .backgroundColor('#dd3')

      }
      .width('100%')
      .height(400)
      .backgroundColor(Color.Orange)


    }
    .width('100%')
    .listDirection(Axis.Horizontal)
  }
}
