import { Person } from '../Model/Model'

@Component
export default struct Item {
  @ObjectLink item: Person;

  // 接收全选与取消
  @Prop isShow: boolean

  build() {
    Column() {
      Row() {
        if (this.isShow) {
          Checkbox()
            .select(this.item.isSelect)
            .margin(5)
            .onChange((val) => {
              // 注入val，是一个布尔值，勾选是ture
              this.item.isSelect = val;
            })
        }

        Image($rawfile('ic_user_portrait.png'))
          .width(50)
        Text(this.item.name)
          .fontSize(20)
          .margin(5)
        Blank()
        Image($rawfile(this.item.isSave ? 'ic_star_filled.png' : 'ic_star.png'))
          .width(30)
          .onClick(() => {
            this.item.isSave = !this.item.isSave
          })
      }
      .width('100%')
      .padding(15)
      .onClick(() => {
        this.item.isExpand = !this.item.isExpand;
      })

      Divider().strokeWidth(1)
      if (this.item.isExpand) {
        Row() {
          Text('联系电话：')
            .fontSize(20)
          Text(this.item.phone)
            .fontSize(20)
        }
        .width('100%')
        .margin(10)
        .padding({ left: 10 })
      }


    }
  }
}