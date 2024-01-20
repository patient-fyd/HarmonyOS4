@Observed
export class Person {
  id: number
  isSelect: boolean
  name: string
  isSave: boolean
  isExpand: boolean
  phone: string

  constructor(id: number, isSelect: boolean, name: string, isSave: boolean, isExpand: boolean, phone: string) {
    this.id = id;
    this.isSelect = isSelect;
    this.name = name;
    this.isSave = isSave;
    this.isExpand = isExpand;
    this.phone = phone;
  }
}