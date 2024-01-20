import Home from './Home'
import See from './See'
import Service from './Service'
import Discover from './Discover'
import My from './My'

@Entry
@Component
struct Index {

  // 代表当前变化的下标
  @State currentTabIndex: number = 0;

  // 处理tab变化的回调
  handleTabChange(index: number) {
    this.currentTabIndex = index;
  }

  @Builder tabBarBuilder(index: number, text: string, icon: Resource, activeIcon: Resource) {

    Column() {
      Image(this.currentTabIndex === index ? activeIcon : icon)
        .width(28)
        .height(28)
          // 图片的填充模式
        .objectFit(ImageFit.Fill)
      Text(text)
        .fontSize(10)
        .fontColor(this.currentTabIndex === index ? '#000' : '#A0A0A0')
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Tabs() {
      TabContent() {
        Home()
      }.tabBar(this.tabBarBuilder(0, '首页', $r('app.media.tabbar_home'), $r('app.media.tabbar_home_active')))

      TabContent() {
        See()
      }.tabBar(this.tabBarBuilder(0, '想看', $r("app.media.tabbar_see"), $r("app.media.tabbar_see_active")))

      TabContent() {
        Service()
      }.tabBar(this.tabBarBuilder(0, '服务', $r('app.media.tabbar_service'), $r('app.media.tabbar_service_active')))

      TabContent() {
        Discover()
      }.tabBar(this.tabBarBuilder(0, '发现', $r("app.media.tabbar_discover"), $r('app.media.tabbar_discover_active')))

      TabContent() {
        My()
      }.tabBar(this.tabBarBuilder(0, '我的', $r('app.media.tabbar_my'), $r('app.media.tabbar_my_active')))
    }
    .barPosition(BarPosition.End)
    .scrollable(false)
    .barHeight(50)
    .onChange(this.handleTabChange.bind(this))

  }
}