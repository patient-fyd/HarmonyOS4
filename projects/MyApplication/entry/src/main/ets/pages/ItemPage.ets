class Item {
  name: string
  image: ResourceStr
  price: number
  discount: number

  constructor(name: string, image: ResourceStr, price: number, discount: number = 0) {
    this.name = name
    this.image = image
    this.price = price
    this.discount = discount
  }
}

@Entry
@Component
struct Index {
  // 商品数据
  private items: Array<Item> = [
    new Item('华为Mate60', $r('app.media.mate60'), 6999, 500),
    new Item('MateBookProX', $r('app.media.mateBookProX'), 13999),
    new Item('WatchGT4', $r('app.media.watchGT4'), 1438),
    new Item('FreeBuds Pro3', $r('app.media.freeBudsPro3'), 1499),
    new Item('Mate X5', $r('app.media.mateX5'), 12999)
  ]

  build() {
    Column({ space: 8 }) {
      Row(){
        Text('商品列表')
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
      .margin({bottom:20})

      ForEach(
        this.items,
        (item:Item) =>{
          Row({space:10}){
            Image(item.image)
              .width(100)
            Column({space:4}){
              if (item.discount) {
                Text(item.name)
                  .fontSize(20)
                  .fontWeight(FontWeight.Bold)
                Text('原价：￥'+item.price)
                  .fontColor('#CCC')
                  .fontSize(14)
                  .decoration({type:TextDecorationType.LineThrough})
                Text('折扣价：￥'+ (item.price - item.discount))
                  .fontColor('#F36')
                  .fontSize(18)
                Text('补贴：￥'+item.discount)
                  .fontColor('#F36')
                  .fontSize(18)
              } else {
                Text(item.name)
                  .fontSize(20)
                  .fontWeight(FontWeight.Bold)
                Text('￥'+item.price)
                  .fontColor('#F36')
                  .fontSize(18)
              }
            }
            .height('100%')
            .alignItems(HorizontalAlign.Start)
          }
          .width('100%')
          .backgroundColor('#FFF')
          .borderRadius(20)
          .height(120)
          .padding(10)
        }
      )


    }
    .width('100%')
    .height('100%')
    .backgroundColor('#EFEFEF')
    .padding(20)
  }
}