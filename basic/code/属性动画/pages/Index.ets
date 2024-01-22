// 属性动画：animation()是组件的属性方法
// 参数需要一个配置对象:设置动画的时间、动画的速率
@Entry
@Component
struct Index {
  @State mLeft: number | string = 0;
  @State opacitys: number = 1;

  build() {
    Column({ space: 20 }) {
      Text('动画1')
        .fontSize(30)
        .fontWeight(900)
        .width('100%')
        .textAlign(TextAlign.Center)
        .margin({ left: this.mLeft })
        .opacity(this.opacitys)
        .animation({ duration: 1000, curve: Curve.Linear })
      //animation属性方法一般放在动画属性方法后面的


      Button('动画切换').onClick(() => {
        if (this.mLeft == 0) {
          this.mLeft = '-100%';
          this.opacitys = 0;
        } else {
          this.mLeft = 0;
          this.opacitys = 1;
        }
      })


    }
    .width('100%')
  }
}