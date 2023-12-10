class Item {
  name: string
  image: ResourceStr
  price: number

  constructor(name: string, image: ResourceStr, price: number) {
    this.name = name
    this.image = image
    this.price = price
  }
}

@Entry
@Component
struct Index {
  // 商品数据
  private items: Array<Item> = [
    new Item('华为Mate60', $r('app.media.mate60'), 6999),
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

      Row({space:10}){
        Image($r('app.media.mate60'))
          .width(100)
        Column({space:4}){
          Text('华为Mate60')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
          Text('￥6999')
            .fontColor('#F36')
            .fontSize(18)
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
    .width('100%')
    .height('100%')
    .backgroundColor('#EFEFEF')
    .padding(20)
  }
}