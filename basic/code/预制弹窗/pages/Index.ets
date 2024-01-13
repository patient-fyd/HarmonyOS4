//预制弹窗

@Entry
@Component
struct Index {
  @State selectedDate: Date = new Date("2024-1-12")
  @State selectTime: Date = new Date('2020-12-25T08:30:00')
  @State select: number = 2
  @State fruits: string[] = ['apple1', 'orange2', 'peach3', 'grape4', 'banana5']

  build() {
    Column({ space: 15 }) {
      Button('警告弹窗').onClick((event: ClickEvent) => {
        AlertDialog.show({
          title: '操作提示', // 弹窗标题
          message: '确认删除吗？', // 弹窗内容
          autoCancel: false, //点击遮障层时，是否关闭弹窗。
          alignment: DialogAlignment.Center, //弹窗位置
          gridCount: 4, // 弹窗容器宽度所占用栅格数
          offset: { dx: 0, dy: -20 }, //弹窗相对alignment所在位置的偏移量

          /* 多个按钮 -- 开始 */
          primaryButton: { //主按钮的文本内容、文本色、按钮背景色和点击回调。
            value: '确认', //按钮文字
            action: () => { //按钮回调
              console.info('你点击了确定按钮')
            },
            fontColor: 'red'
          },
          secondaryButton: { //副按钮的文本内容、文本色、按钮背景色和点击回调。
            value: '取消', //按钮文字
            action: () => { //按钮回调
              console.info('你点击了取消按钮')
            },
            fontColor: '#aaa'
          },
          /* 多个按钮 -- 结束 */

          /* 单个按钮 -- 开始 */
          // confirm: {
          //   value: '确认',
          //   action: () => {
          //     console.info('xxxxxx')
          //   }
          // }
          /* 单个按钮 -- 结束 */
        })
      })

      Button('列表弹窗').onClick(() => {
        ActionSheet.show({
          title: '操作提示', // 弹窗标题
          message: '请选择类型', //弹窗内容
          autoCancel: true, //点击遮障层时，是否关闭弹窗。
          // 确认按钮的文本内容和点击回调
          confirm: {
            value: '确定', //文字内容
            action: () => { //回调
              console.log('你点击了确认按钮')
            }
          },
          // 点击遮障层关闭dialog时的回调
          cancel: () => {
            console.log('弹窗关闭了')
          },
          // 弹窗在竖直方向上的对齐方式。
          alignment: DialogAlignment.Bottom,
          // 弹窗相对alignment所在位置的偏移量
          offset: { dx: 0, dy: -10 },
          // 设置选项内容，每个选择项支持设置图片、文本和选中的回调
          sheets: [
            {
              title: '打折商品', // 标题
              action: () => { // 回调
                console.log('goods1')
              }
            },
            {
              title: '限购商品',
              action: () => {
                console.log('goods2')
              }
            },
            {
              title: 'VIP商品',
              action: () => {
                console.log('goods2')
              }
            },
            {
              title: '预售商品',
              action: () => {
                console.log('goods3')
              }
            }
          ]
        })
      })

      // 日期滑动选择器
      Button('阳历').onClick((event: ClickEvent) => {
        DatePickerDialog.show({
          start: new Date("2000-1-1"),
          end: new Date("2100-12-31"),
          selected: this.selectedDate,
          onAccept: (value: DatePickerResult) => {
            // 通过Date的setFullYear方法设置按下确定按钮时的日期，这样当弹窗再次弹出时显示选中的是上一次确定的日期
            this.selectedDate.setFullYear(value.year, value.month, value.day)
            console.info("DatePickerDialog:onAccept()" + JSON.stringify(value))
          },
          onCancel: () => {
            console.info("DatePickerDialog:onCancel()")
          },
          onChange: (value: DatePickerResult) => {
            console.info("DatePickerDialog:onChange()" + JSON.stringify(value))
          }
        })
      });

      Button('阴历').onClick((event: ClickEvent) => {
        DatePickerDialog.show({
          start: new Date("2000-1-1"),
          end: new Date("2100-12-31"),
          selected: this.selectedDate,
          lunar: true,
          onAccept: (value: DatePickerResult) => {
            // 通过Date的setFullYear方法设置按下确定按钮时的日期，这样当弹窗再次弹出时显示选中的是上一次确定的日期
            this.selectedDate.setFullYear(value.year, value.month, value.day)
            console.info("DatePickerDialog:onAccept()" + JSON.stringify(value))
          },
          onCancel: () => {
            console.info("DatePickerDialog:onCancel()")
          },
          onChange: (value: DatePickerResult) => {
            console.info("DatePickerDialog:onChange()" + JSON.stringify(value))
          }
        })
      });

      // 时间滑动选择器
      Button('12小时制').onClick(() => {
        TimePickerDialog.show({
          selected: this.selectTime,
          onAccept: (value: TimePickerResult) => {
            // 设置selectTime为按下确定按钮时的时间，这样当弹窗再次弹出时显示选中的为上一次确定的时间
            this.selectTime.setHours(value.hour, value.minute)
            console.info("TimePickerDialog:onAccept()" + JSON.stringify(value))
          },
          onCancel: () => {
            console.info("TimePickerDialog:onCancel()")
          },
          onChange: (value: TimePickerResult) => {
            console.info("TimePickerDialog:onChange()" + JSON.stringify(value))
          }
        })
      });
      Button('24小时').onClick(() => {
        TimePickerDialog.show({
          selected: this.selectTime,
          useMilitaryTime: true,
          onAccept: (value: TimePickerResult) => {
            this.selectTime.setHours(value.hour, value.minute)
            console.info("TimePickerDialog:onAccept()" + JSON.stringify(value))
          },
          onCancel: () => {
            console.info("TimePickerDialog:onCancel()")
          },
          onChange: (value: TimePickerResult) => {
            console.info("TimePickerDialog:onChange()" + JSON.stringify(value))
          }
        })
      })

      // 文本滑动器
      Button('文本滑动选择器').onClick((event: ClickEvent) => {
        TextPickerDialog.show({
          range: this.fruits,
          selected: this.select,
          onAccept: (value: TextPickerResult) => {
            // 设置select为按下确定按钮时候的选中项index，这样当弹窗再次弹出时显示选中的是上一次确定的选项
            this.select = value.index
            console.info("TextPickerDialog:onAccept()" + JSON.stringify(value))
          },
          onCancel: () => {
            console.info("TextPickerDialog:onCancel()")
          },
          onChange: (value: TextPickerResult) => {
            console.info("TextPickerDialog:onChange()" + JSON.stringify(value))
          }
        })
      })
    }
    .width('100%').margin({ top: 30 })
  }
}
