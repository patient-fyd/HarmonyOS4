// 文本输入
@Entry
@Component
struct Index {
  @State username: string = '';
  @State password: string = '';

  login() {
    console.log(this.username)
    console.log(this.password)
  }

  build() {
    Column() {
      // 表单
      TextInput({ placeholder: '请你输入账号', text: this.username })
        .type(InputType.Normal)
        .onChange((val) => { // 输入过程中实时触发
          this.username = val
        })
      Divider();//加一个横行
      TextInput({ placeholder: '请你输入密码', text: this.password })
        .margin({ top: 10 })
        .type(InputType.Password)
        .onChange((val) => { // 输入过程中实时触发
          this.password = val
        })

      Button('登录')
        .onClick(() => this.login())
        .margin({ top: 10 })


    }
    .width('100%')
  }
}