我想将我的home目录整体上传，那如何上传至github？
按照文档一步步执行
https://blog.csdn.net/tianya_team/article/details/72454473
其中，遇到了git fetch 或git pull时提示error：refusing to merge unrelated histories.
参考如下文档，加入--allow-unrelated-histories解决
https://stackoverflow.com/questions/37937984/git-refusing-to-merge-unrelated-histories-on-rebase
