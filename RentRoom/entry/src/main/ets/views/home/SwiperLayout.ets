import type { IBannerItem, IBannerList } from '../../model/HomeData';

@Component
export default struct SwiperLayout {
  @State bannerList: IBannerList = [
    {
      "id": 1,
      "name": "banner1",
      "imageURL": "http://192.168.2.74:6060/public/home_banner_1.jpg"
    },
    {
      "id": 2,
      "name": "banner2",
      "imageURL": "http://192.168.2.74:6060/public/home_banner_2.jpg"
    },
    {
      "id": 3,
      "name": "banner3",
      "imageURL": "http://192.168.2.74:6060/public/home_banner_3.jpg"
    },
    {
      "id": 4,
      "name": "banner4",
      "imageURL": "http://192.168.2.74:6060/public/home_banner_4.jpg"
    }
  ]

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
