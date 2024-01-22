import { Person } from '../Model/Model'
import Item from '../Views/Item'

@Entry
@Component
struct Index {
  @State userArr: Person[] = [
    new Person(1, false, '张三', false, false, '11111111111')
  ];

  // 控制复选框显示与隐藏
  @State isShow: boolean = false;

  build() {
    Column() {
      Row() {
        Text('联系人')
          .fontSize(25)
          .margin({ left: 8 })
        Blank()
        Button(this.isShow ? '取消' : '选择')
          .margin({ right: 3 })
          .onClick(() => {
            this.isShow = !this.isShow
          })
        Button('+')
          .margin({ right: 8 })
          .onClick(()=>{
            const newUser = new Person(Date.now(),false,Math.random().toFixed(2),false,false,'11111111111')
            this.userArr.push(newUser)
          })
      }
      .width('100%')
      .margin({ "top": "15.00vp", "right": "15.00vp", "bottom": "", "left": "15.00vp" })

      List() {


        ForEach(this.userArr, (item: Person) => {
          ListItem() {
            Item({ item: item,isShow:this.isShow })
          }
          .backgroundColor('#ffffffff')
          .border({ radius: 10 })
          .margin({"top":"10.00vp","right":"10.00vp","bottom":"","left":"10.00vp"})
        }, item => JSON.stringify(item))

      }
      .layoutWeight(1)


      // 如果是选择的情况下展示
      if (this.isShow) {
        Button('删除')
          .backgroundColor('red')
          .margin({ bottom: 20 })
          .onClick(()=>{
            this.userArr = this.userArr.filter(item=>!item.isSelect)
          })
      }


    }
    .width('100%')
    .backgroundColor('#ffe9e6e6')
  }
}