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

        Button('缩小')
          .width(80)
          .fontSize(20)
          .onClick(() => {
            if (this.imageWidth >= 10) {
              this.imageWidth -= 10
            }
          })

        Button('放大')
          .width(80)
          .fontSize(20)
          .onClick(() => {
            if (this.imageWidth < 300) {
              this.imageWidth += 10
            }
          })

        Slider({
          min: 100,
          max: 300,
          value: this.imageWidth,
        })
          .width('90%')
          .blockColor('36D')
          .trackThickness(8)
          .showTips(true)
          .onChange(value => {
            this.imageWidth = value
          })

      }
      .width('100%')
    }
    .height('100%')
  }
}