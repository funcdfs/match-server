namespace cpp match_service

struct User{
    1: i32 id,
    2: string name,
    3: i32 score,
} // 定义一个 user 的结构体

service Match {
    i32 add_user(1: User user, 2: string Info),
    i32 remove_user(1: User user, 2: string Info),
} // 写一个 Match 服务，里面有 add_user 和 remove_user 两个函数
