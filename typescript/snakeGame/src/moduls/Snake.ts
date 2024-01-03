class Snake{

    // 表示蛇头的元素
    head: HTMLElement;
    // 表示蛇的身体(包括蛇头)
    bodies: HTMLCollection;
    // 获取蛇的容器
    element: HTMLElement;
    // 获取蛇的方向
    direction: string = '';

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
        // 如果新值和旧值相同，则直接返回不再修改
        if(this.X === value) {
            return;
        }
        // 检查是否撞墙
        if(value < 0 || value > 290) {
            throw new Error('GAME OVER');
        }
        this.head.style.left = value + 'px';
    }

    set Y(value) {
        // 如果新值和旧值相同，则直接返回不再修改
        if(this.Y === value) {
            return;
        }
        // 检查是否撞墙
        if(value < 0 || value > 290) {
            throw new Error('GAME OVER');
        }
        this.head.style.top = value + 'px';
    }

    // 蛇增加身体的方法
    addBody() {
        // 向element中添加一个div
        this.element.insertAdjacentHTML("beforeend", "<div></div>");
    }
}
export default Snake;