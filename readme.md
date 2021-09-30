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

4. 第四步

编译 `main.cpp` 

- `g++ -c main.cpp gen-cpp/*.cpp`
- `g++ -c main.cpp`
- `g++ *.o -o main -lthrift` -lthrift 代表加上 thrift 的动态链接库

可以在 `server.server()` 前面增加 `cout << "start match server" ` 观察输出

5. 第五步

在 `game/src` 文件夹下，执行 `python`  的代码生成
`thrift -r --gen py ../../thrift/match.thrift`  

`cd gen-py/match`

ls 这里的 Match-romote 是 Python 用来写服务器端的  
而这里我们想要写客户端，所以可以将 `Match-remote` 删除

vim client.py 开始编写客户端代码

修改两个 from 路径 from gen_py.match import Match

from gen_py.match.ttypes import 

删掉无用代码

`user = User(1, "fengwei", 1500)`
`client.add_user(user, "")`

`python3 client.py`


