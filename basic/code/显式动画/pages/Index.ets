//动画:显示动画
//animateTo(1,2)是ArkUI 提供的一个全局的动画函数，调用此函数实现的动画称为显式动画
//该函数共有两个参数，分别是
//   ○ 动画参数，用于设置动画时长、属性值变化曲线等等。
//   ○ 匿名函数，用于设置属性值的 【终点值】，在该函数中设置的属性值，系统均会按照前边设置的动画参数，驱动属性值从其初始值平滑的过渡到终点值，从而实现动画效果。

@Entry
@Component
struct Index {
  @State mLeft: number | string = 0;
  @State opacitys: number = 1;
  @State scaleX: number = 1;
  @State scaleY: number = 1;
  @State rotates: number = 0;

  build() {
    Column({ space: 20 }) {
      Text('显示动画1')
        .fontSize(30)
        .fontWeight(900)
        .width('100%')
        .textAlign(TextAlign.Center)
        .margin({ left: this.mLeft })
        .opacity(this.opacitys)


      Button('切换显示')
        .onClick((event: ClickEvent) => {
          // 第一个参数：动画的时间
          animateTo({ duration: 1000, curve: Curve.Linear }, () => {
            if (this.mLeft == 0) {
              // margin动画
              this.mLeft = '-100%';
              // 透明度
              this.opacitys = 0;
            } else {
              this.mLeft = 0;
              this.opacitys = 1;
            }
          })
        })

      Text('显示动画2')
        .fontSize(30)
        .fontWeight(900)
        .textAlign(TextAlign.Center)
        .scale({ x: this.scaleX, y: this.scaleY })
        .rotate({ angle: this.rotates })


      Button('切换显示')
        .onClick((event: ClickEvent) => {
          animateTo({ duration: 1000, curve: Curve.Linear }, () => {
            if (this.rotates == 0) {
              this.rotates = 360
              this.scaleX = 0
              this.scaleY = 0
            } else {
              this.rotates = 0
              this.scaleX = 1
              this.scaleY = 1
            }
          })
        })

    }
    .width('100%')
  }
}