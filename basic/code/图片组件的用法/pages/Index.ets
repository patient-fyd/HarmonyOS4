// ArkTS:TS与JS的超集
// 鸿蒙当中内置UI组件：Image->展示图片
@Entry
@Component
struct Index {
  build() {
    Column(){
      // 图片的写法
      Image($r('app.media.unnamed'))
        .width(200)
        .height(200)

      Image($rawfile('unnamed2.jpg'))
        .width(150)
        .height(150)

      Image('https://images.pexels.com/photos/2174974/pexels-photo-2174974.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
        .width(300)
        .height(200)

    }
  }
}