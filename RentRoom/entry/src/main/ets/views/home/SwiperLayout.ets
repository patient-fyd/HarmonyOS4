import type { IBannerItem, IBannerList } from '../../model/HomeData';

@Component
export default struct SwiperLayout {
  @State bannerList: IBannerList = []

  build() {
    Swiper() {
      ForEach(this.bannerList, (banner: IBannerItem) => {
        Image(banner.imageURL)
          .width('100%')
          .height(211)
          .objectFit(ImageFit.Fill)
      }, (banner: IBannerItem) => `${banner.id}`)

    }
    .autoPlay(true)
    .indicatorStyle({
      color: '#fff',
      selectedColor: '#479559'
    })
  }
}