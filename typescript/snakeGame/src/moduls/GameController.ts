import Food  from "./Food";
import ScorePanel from "./ScorePanel";
import Snake from "./Snake";

// 游戏控制器，控制其他的所有类
class GameController{
    // 定义三个属性
    // 蛇
    snake: Snake;
    // 食物
    food: Food;
    // 记分牌
    scorePanel: ScorePanel;
    // 游戏是否结束
    isLive = true;

    constructor() {
        this.snake = new Snake();
        this.food = new Food();
        this.scorePanel = new ScorePanel();

        this.init();
    }

    // 开始游戏
    init() {
        // 绑定键盘按键按下的事件
        document.addEventListener('keydown', this.keydownHandler.bind(this));
        this.moveSnake();
    }

    // 键盘按下的响应函数
    keydownHandler(event: KeyboardEvent) {
        // 需要检查合法性
        // 向上
        if(event.key === 'ArrowUp' || event.key === 'Up') {
            this.snake.direction = 'ArrowUp';
        }
        // 向下
        if(event.key === 'ArrowDown' || event.key === 'Down') {
            this.snake.direction = 'ArrowDown';
        }
        // 向左
        if(event.key === 'ArrowLeft' || event.key === 'Left') {
            this.snake.direction = 'ArrowLeft';
        }
        // 向右
        if(event.key === 'ArrowRight' || event.key === 'Right') {
            this.snake.direction = 'ArrowRight';
        }
        // 修改方向
        this.snake.direction = event.key;
    }

    /**
     * 控制蛇移动的方法
     * 根据方向来使蛇的位置改变
     */
    moveSnake() {
        // 获取蛇现在坐标
        let X = this.snake.X;
        let Y = this.snake.Y;
        // 根据当前方向移动蛇的位置
        switch (this.snake.direction) {
            case 'ArrowUp':
                Y -= 10;
                break;
            case 'ArrowDown':
                Y += 10;
                break;
            case 'ArrowLeft':
                X -= 10;
                break;
            case 'ArrowRight':
                X += 10;
                break;
        }

        // 检查蛇是否吃到食物
        this.checkEat(X,Y);

        // 修改蛇的X和Y值
        try{
            this.snake.X = X;
            this.snake.Y = Y;
        }catch (e){
            // 进入到catch，说明出现了异常，则游戏结束
            alert((e as Error).message);
            this.isLive = false;
        }

        // 开启一个定时调用,随着等级提升速度加快
        this.isLive && setTimeout(this.moveSnake.bind(this), 300 - (this.scorePanel.level - 1) * 30);
    }
    // 蛇是否吃到食物
    checkEat(X: number, Y: number) {
        if (X === this.food.X && Y === this.food.Y) {
            // 食物位置重置
            this.food.change();
            // 分数增加
            this.scorePanel.addScore();
            // 蛇增加一节
            this.snake.addBody();
        }
    }
}

export default GameController;