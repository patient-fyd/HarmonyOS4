// 列表组件
@Entry
@Component
struct Index {
  build() {
    List({ space: 10 }) {
      ListItem() {
        Text('list1')
      }
      .width('100%')
      .height(40)
      .backgroundColor(Color.Red)

      ListItemGroup() {
        ListItem() {
          Text('list2')
        }
        .height(40)
        .width('100%')

        ListItem() {
          Text('list3')
        }
        .height(40)
        .width('100%')

      }
      .width('100%')
      .backgroundColor(Color.Orange)

      ListItemGroup() {
        ListItem() {
          Text('list4')
        }.width('100%')

        ListItem() {
          Text('list5')
        }.width('100%')

      }.width('100%').backgroundColor(Color.Orange)
    }.width('100%')
  }
}
