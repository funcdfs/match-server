1. 第一步

创建 `readme.md` 将代码仓库与 `git` 绑定

2. 第二步

创建 `./thrift/match.thrift` 文件，在文件中 添加 struct 和 service 

3. 第三步

使用 `thrift -r --gen cpp ../thrift/match.thrift` 在对应目录下生成框架代码  
可以生成不同语言的代码

然后将生成的代码抄过来 `mv gen-cpp/ match_server`
然后将核心的框架代码复制一份进行修改 `mv match_server/Match_server.skeleton.cpp main.cpp`
然后在复制过来的 `main.cpp` 中编辑即可

在 `add_user` 和 `remove_user` 中添加 `return 0;` 编译通过 `main.cpp` 



