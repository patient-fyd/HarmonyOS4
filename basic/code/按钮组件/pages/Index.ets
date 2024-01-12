// 按钮组件
@Entry
@Component
struct Index {
  build() {
    Column(){
      // 按钮
      Button('按钮')
        .type(ButtonType.Normal)
        .onClick(()=>{
          console.log('你好')
        })

      // Button组件可以放置子组件
      Button(){
        Image($r('app.media.unnamed'))
          .width(300)
          .height(300)
      }
    }
    
  }
}