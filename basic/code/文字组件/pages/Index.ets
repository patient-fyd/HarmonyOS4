// 文本组件Text
@Entry
@Component
struct Index {
  build() {
    Column(){
      // 第一种写法
      Text('我爱你，宝宝')
        .fontSize(40)
        .backgroundColor(Color.Pink)
        .fontColor('red')

      Text('我爱你，宝宝我爱你，宝宝我爱你，宝宝我爱你，宝宝我爱你，宝宝我爱你，宝宝我爱你，宝宝我爱你，宝宝')
        .fontWeight(900)
        .backgroundColor(Color.Yellow)
        .textAlign(TextAlign.Center)
        .textOverflow({
          overflow:TextOverflow.Ellipsis
        })
        .width(100)
        .height(100)

      //
    }
    
  }
}