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

        // 修改x时，是在修改水平坐标，蛇在左右移动，蛇在向左移动时，不能向右掉头，反之亦然
        if(this.bodies[1] && (this.bodies[1] as HTMLElement).offsetLeft === value) {
            // 如果发生了掉头，让蛇向反方向继续移动
            if(this.direction === 'ArrowLeft') {
                value = this.X + 10;
            } else if(this.direction === 'ArrowRight') {
                value = this.X - 10;
            }
        }

        // 移动身体
        this.moveBody();

        this.head.style.left = value + 'px';
        this.checkHeadBody();
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

        // 修改y时，是在修改垂直坐标，蛇在上下移动，蛇在向上移动时，不能向下掉头，反之亦然
        if(this.bodies[1] && (this.bodies[1] as HTMLElement).offsetTop === value) {
            // 如果发生了掉头，让蛇向反方向继续移动
            if(this.direction === 'ArrowUp') {
                value = this.Y + 10;
            } else if(this.direction === 'ArrowDown') {
                value = this.Y - 10;
            }
        }

        this.moveBody();

        this.head.style.top = value + 'px';
        this.checkHeadBody();
    }

    // 蛇增加身体的方法
    addBody() {
        // 向element中添加一个div
        this.element.insertAdjacentHTML("beforeend", "<div></div>");
    }

    // 蛇移动身体的方法
    moveBody() {
        // 将后边的身体设置为前边身体的位置
        for(let i = this.bodies.length - 1; i > 0; i--) {
            // 获取前边身体的位置
            let X = (this.bodies[i - 1] as HTMLElement).offsetLeft;
            let Y = (this.bodies[i - 1] as HTMLElement).offsetTop;
            // 将值设置到当前身体上
            (this.bodies[i] as HTMLElement).style.left = X + 'px';
            (this.bodies[i] as HTMLElement).style.top = Y + 'px';
        }
    }

    // 头和身体是否相撞
    checkHeadBody() {
        // 获取所有的身体
        for(let i = 1; i < this.bodies.length; i++) {
            let bd = this.bodies[i] as HTMLElement;
            if(this.X === bd.offsetLeft && this.Y === bd.offsetTop) {
                throw new Error('GAME OVER');
            }
        }
    }
}
export default Snake;