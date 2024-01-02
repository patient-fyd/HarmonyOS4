class Snake{

    // 表示蛇头的元素
    head: HTMLElement;
    // 表示蛇的身体(包括蛇头)
    bodies: HTMLCollection;
    // 获取蛇的容器
    element: HTMLElement;

    constructor() {
        this.element = document.getElementById('snake')!;
        this.head = document.querySelector('#snake > div') as HTMLElement;
        this.bodies = this.element.getElementsByTagName('div');
    }

    // 获取蛇的坐标（蛇头的坐标）
    get X() {
        return this.head.offsetLeft;
    }

    get Y() {
        return this.head.offsetTop;
    }

    // 设置蛇头的坐标
    set X(value) {
        this.head.style.left = value + 'px';
    }

    set Y(value) {
        this.head.style.top = value + 'px';
    }

    // 蛇增加身体的方法
    addBody() {
        // 向element中添加一个div
        this.element.insertAdjacentHTML("beforeend", "<div></div>");
    }
}
export default Snake;