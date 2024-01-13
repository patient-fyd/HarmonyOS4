// position绝对定位，参照的是父元素的左上角
@Entry
@Component
struct Index {
  build() {
    Stack(){
      Image($r('app.media.dog'))
        .width(100)
        .height(100)
        // 绝对定位，参照的是父元素的左上角
        .position({
          x:100,
          y:100
        })
    }
    .width('100%')
    .height(300)
    .backgroundColor("#ccc")
  }
}
