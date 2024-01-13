@Component
export default struct Child {
  // 单向同步，
  @Prop count:number
  build() {
    Column() {
      Text('我是子组件Child' + this.count.toString())
    }
    .width('100%')
    .border({ width: 1, color: '333' })

  }
}