//API弹窗
import promptAction from '@ohos.promptAction'

@Entry
@Component
struct Index {
  build() {
    Column({ space: 15 }) {
      // 信息提示窗

      Button('完成操作')
        .onClick(() => {
          promptAction.showToast({
            message: '恭喜，操作成功！',
            duration: 2000,
            bottom: 150,
          });
        })

      // 对话框
      Button('卸载')
        .onClick(() => {
          promptAction.showDialog({
            title: '是否卸载软件？',
            message: '卸载后不可恢复，请确认操作',
            buttons: [
              {
                text: '确定',
                color: '#CF4538',
              },
              {
                text: '取消',
                color: '#aaa',
              }
            ],
          })
            .then(data => {
              console.info('你点了确认或取消' + data.index);
            })
        })

      // 菜单
      Button('请选择你要的甜度')
        .onClick(()=>{
          promptAction.showActionMenu({
            title: '确认操作',
            buttons: [
              {
                text: '全糖',
                color: '#000000',
              },
              {
                text: '7分',
                color: '#000000',
              },
              {
                text: '5分',
                color: '#000000',
              },
              {
                text:'3分',
                color:'#000000',
              }
            ]
          }).then((data)=>{
            console.log('你选择了：',data.index)
          })
        })

    }.width('100%').margin({ top: 30 })
  }
}