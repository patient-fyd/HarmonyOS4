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

import {Header} from '../components/CommonComponents'

/*// 全局自定义构建函数
@Builder function ItemCard(item: Item) {
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
}*/

// 全局公告样式
@Styles function fillScreen() {
  .width('100%')
  .height('100%')
  .backgroundColor('#EFEFEF')
  .padding(20)
}

@Extend(Text) function priceText() {
  .fontColor('#F36')
  .fontSize(18)
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
    new Item('Mate X5', $r('app.media.mateX5'), 12999),
    new Item('Mate X5', $r('app.media.mateX5'), 12999),
    new Item('Mate X5', $r('app.media.mateX5'), 12999),
    new Item('Mate X5', $r('app.media.mateX5'), 12999)
  ]

  build() {
    Column({ space: 8 }) {
      // 标题部分
      Header({title:'商品列表'})
        .margin({bottom:20})

      List({space:8}){
        ForEach(
          this.items,
          (item:Item) =>{
            ListItem(){
              this.ItemCard(item)
            }
          }
        )
      }
      .width('100%')
      .layoutWeight(1)

    }
    .fillScreen()

  }

  @Builder ItemCard(item: Item) {
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
            .priceText()
          Text('补贴：￥'+item.discount)
            .priceText()
        } else {
          Text(item.name)
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
          Text('￥'+item.price)
            .priceText()
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
}