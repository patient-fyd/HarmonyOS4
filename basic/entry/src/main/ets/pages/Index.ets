//切换按钮
@Entry
@Component
struct Index {

  build() {
    Column() {
      // 切换按钮：复选框形式
      Toggle({type:ToggleType.Checkbox,isOn:false})
        .width(50)
      //切换按钮:开关 isOn:决定开还是关闭
      Toggle({type:ToggleType.Switch,isOn:false})
        .switchPointColor(Color.Pink)
        .width(50)
      //按钮
      Toggle({type:ToggleType.Button,isOn:true}){
        Text('我是自定义')
      }.selectedColor(Color.Pink)
    }
    .width('100%')
  }
}