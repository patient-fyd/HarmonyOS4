@Component
export default struct Child2 {

  @Consume count2:number
  build() {
    Column() {
      Text('我是子组件Child2 ' + this.count2)
      Button('孙子修改数据').onClick((event: ClickEvent)=>{
        this.count2++;
      })
    }
    .width('100%')
    .border({ width: 1, color: '333' })

  }
}