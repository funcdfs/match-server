# https://git-wip-us.apache.org/repos/asf?p=thrift.git;a=blob_plain;f=tutorial/tutorial.thrift
# 在 thrift 文件中，支持 shell 同款的注释语法

# 首先要了解的是类型
#                   在上面的 .thrift 文件中有
# 同时 thrift 文件也支持 C 语言的评论

# thrift 中存在命名空间
# thrift 中可以使用 C 风格的 typedef 定义变量类型别名
# thrift 中可以使用 JSON 格式的 常量定义，结构体，以及其他复杂的类型
# thrift 中使用 C 风格的 enum 定义写法

# 定义结构体时，要拥有数据的编号

# 定义服务的写法 和 C 风格的函数写法相似
# 使用 service 关键字, 只不过 参数要添加 1,2,等类似的编号

namespace cpp match_service

struct User{
    1: i32 id,
    2: string name,
    3: i32 score,
} 
// 定义一个 user 的结构体，注意添加序列数

service Match {
    i32 add_user(1: User user, 2: string Info),
    i32 remove_user(1: User user, 2: string Info),
    // service 中定义两个接口，string info 代表其他信息，方便之后的维护
}
