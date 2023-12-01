// 装饰器：用来装饰类结构、方法、变量
@Entry  // 标记当前组件是入口组件
@Component // 标记自定义组件
struct Index { // 自定义组件：可复用的UI单元
  // State 标记该变量是状态变量，值变化时会触发UI刷新
  @State message: string = 'Hello World'

  build() { // UI描述：其内部以声明式方式描述UI结构
    // 内置组件：ArkUI提供的组件
    // 容器组件：用来完成页面布局，例如 Row、Column
    // 基础组件：自带样式和功能的页面元素，例如Text
    Row() {
      Column() {
        Text(this.message)
          // 属性方法：设置组件的UI样式
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor('#36D')
          // 事件方法：设置组件的事件回调
          .onClick(()=>{
            this.message = 'Hello ArkTS!'
          })

        //Image('https://consumer.huawei.com/content/dam/huawei-cbg-site/cn/mkt/pdp/phones/mate60-pro/img/performance/performance-feature-item-2.webp')
        Image($r('app.media.icon'))
          .width(250)
          .interpolation(ImageInterpolation.High)
      }
      .width('100%')
    }
    .height('100%')
  }
}