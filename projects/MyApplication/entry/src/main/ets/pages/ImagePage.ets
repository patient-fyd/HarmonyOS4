@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Image($r('app.media.icon'))
          .width(250)
          .interpolation(ImageInterpolation.High)

        Text($r('app.string.width_label'))
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}