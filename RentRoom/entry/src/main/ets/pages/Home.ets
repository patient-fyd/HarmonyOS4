import SwiperLayout from '../views/home/SwiperLayout'

@Component
export default struct Home {
  build() {
    Column() {
      SwiperLayout()
    }
    .height('100%')
  }
}