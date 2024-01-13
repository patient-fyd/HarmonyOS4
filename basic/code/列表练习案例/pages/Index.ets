// 列表练习案例
@Entry
@Component
struct Index {
  @State contactsGroups: object[] = [
    {
      title: 'A',
      contacts: [
        '艾佳',
        '安安',
        'Angela'
      ],
    },
    {
      title: 'B',
      contacts: [
        '白叶',
        '伯明'
      ],
    },
    {
      title: 'C',
      contacts: [
        '豪哥',
        '天宇'
      ],
    },
    {
      title: 'D',
      contacts: [
        '白叶',
        '伯明'
      ],
    },
    {
      title: 'E',
      contacts: [
        '鲁班',
        '张飞',
        '貂蝉'
      ],
    }
  ]

  // 复用UI组件的函数
  @Builder header(item){
    Text(item.title)
  }

  build() {
    List() {
      // 遍历
      ForEach(this.contactsGroups, (item, index) => {
        ListItemGroup({header:this.header(item)}) {
          ForEach(item.contacts, (user, index) => {
            ListItem() {
              Text(user)
            }
          }, item => JSON.stringify(item))
        }
      }, item => JSON.stringify(item))
    }
    .width('100%')
    .listDirection(Axis.Vertical)
  }
}
