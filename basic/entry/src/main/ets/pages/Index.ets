@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        Text('联系人')
          .fontSize(25)
          .margin({ left: 8 })
        Blank()
        Button('取消')
          .margin({ right: 3 })
        Button('+')
          .margin({ right: 8 })
      }
      .width('100%')
      .margin({"top":"15.00vp","right":"15.00vp","bottom":"","left":"15.00vp"})

      List() {
        ListItem() {
          Column() {
            Row() {
              Checkbox()
                .select(false)
                .margin(5)
              Image($rawfile('ic_user_portrait.png'))
                .width(50)
              Text('张三')
                .fontSize(20)
                .margin(5)
              Blank()
              Image($rawfile('ic_star.png'))
                .width(30)
            }
            .width('100%')
            .padding(15)

            Divider().strokeWidth(1)

            Row() {
              Text('联系电话：')
                .fontSize(20)
              Text('11111111111')
                .fontSize(20)
            }
            .width('100%')
            .margin(10)
            .padding({ left: 10 })

          }

        }
        .backgroundColor('#ffffffff')
        .border({ radius: 10 })
        .margin(10)
      }
      .layoutWeight(1)


      Button('删除')
        .backgroundColor('red')
        .margin({bottom:20})
    }
    .width('100%')
    .backgroundColor('#ffe9e6e6')
  }
}