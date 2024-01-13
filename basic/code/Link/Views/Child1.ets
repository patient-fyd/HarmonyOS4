@Component
export default struct Child1 {
  // 单向同步，
  @Link count1:number
  build() {
    Column() {
      Text('我是子组件Child1 ' + this.count1)
      Button('Link修改数据').onClick(()=>{
        this.count1++;
      })
    }
    .width('100%')
    .border({ width: 1, color: '333' })

  }
}