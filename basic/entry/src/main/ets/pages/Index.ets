@Entry  //代表的是组件的入口
@Component  // 代表的是自定义组件
struct Index {
  // 定义响应式数据
  @State isOn:boolean = false;
  // 书写UI的地方
  build() {
    Column({space:20}){

      Row(){
        Image(this.isOn?$rawfile('code-wallpaper-2.jpeg'):$rawfile('maxresdefault.jpg'))
          .width("100%")
          .height(200)
      }
      .width('100%')

      Row(){
        Button("开灯")
          .margin({right:20})
          .onClick(()=>{
            this.isOn = true;
          })
        Button("关灯")
          .margin({left:20})
          .onClick(()=>{
            this.isOn = false;
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.Center)

    }
    .width('100%')

  }
}