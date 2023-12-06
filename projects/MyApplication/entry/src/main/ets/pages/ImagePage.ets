@Entry
@Component
struct Index {
  @State imageWidth: number = 150

  build() {
    Row() {
      Column() {
        Image($r('app.media.icon'))
          .width(this.imageWidth)
          .interpolation(ImageInterpolation.High)

        Text($r('app.string.width_label'))
          .fontSize(20)
          .fontWeight(FontWeight.Bold)

        TextInput({text:this.imageWidth.toFixed(0)})
          .width(150)
          .backgroundColor('#36D')
          .type(InputType.Number)
          .onChange(value =>{
            this.imageWidth = parseInt(value)
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}