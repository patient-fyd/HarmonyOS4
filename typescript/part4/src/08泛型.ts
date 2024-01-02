/*
function fn(a:number):number{
    return a
}*/

/**
 * 在定义函数或接口时，如果遇到类型不明确，就可以使用泛型类
 */
function fn<T>(a:T):T{
    return a
}

// 可以直接调用具有泛型的函数
fn(10); // 不指定泛型，TS可以自动对类型进行推断
fn<string>("hello"); // 指定泛型

function fn2<T,K>(a:T,b:K):T{
    console.log(b);
    return a;
}
fn2<string,number>("hello",10);

interface Inter{
    length:number;
}
function fn3<T extends Inter>(a:T):number{
    return a.length
}

console.log(fn3("hello"));