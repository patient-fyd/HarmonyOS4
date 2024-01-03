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
        if(event.key === 'ArrowUp' || event.key === 'Up' || event.key === 'w') {
            this.snake.direction = 'ArrowUp';
        }
        // 向下
        if(event.key === 'ArrowDown' || event.key === 'Down' || event.key === 's') {
            this.snake.direction = 'ArrowDown';
        }
        // 向左
        if(event.key === 'ArrowLeft' || event.key === 'Left' || event.key === 'a') {
            this.snake.direction = 'ArrowLeft';
        }
        // 向右
        if(event.key === 'ArrowRight' || event.key === 'Right' || event.key === 'd') {
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
            case 'ArrowUp' || 'Up' || 'w':
                Y -= 10;
                break;
            case 'ArrowDown' || 'Down' || 's':
                Y += 10;
                break;
            case 'ArrowLeft' || 'Left' || 'a':
                X -= 10;
                break;
            case 'ArrowRight' || 'Right' || 'd':
                X += 10;
                break;
        }

        // 修改蛇的X和Y值
        this.snake.X = X;
        this.snake.Y = Y;

        // 开启一个定时调用,随着等级提升速度加快
        this.isLive && setTimeout(this.moveSnake.bind(this), 300 - (this.scorePanel.level - 1) * 30);
    }
}

export default GameController;