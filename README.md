# 个人配置

## neovim
### 设置步骤
1. 首先终端确保可以顺畅连接到外网
2. 执行`git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
3. 进入editor 运行`chmod +x nvim-setup.sh && ./nvim-setup.sh`
4. 确保nvim的版本>=0.5，运行nvim
5. 打开nvim, 先无视错误, 然后运行 `:PackerSync`, 有失败则重新打开继续运行
6. 同步完成后重新打开nvim, 同步coc的插件, 同步完成就可以愉快地使用了(如果有图标乱码请安装nerd字体)

### 更改过的键位
1. 常规
    - \<leader\> -> 空格
    - H 到行首, K到行尾, Q括号匹配
    - 插入模式jk -> ESC
    - ctrl + d -> 9j
    - ctrl + u -> 9k
    - alt + h/j/k/l 窗口之间跳转
    - \<leader\>gg 关闭当前buffer
2. 插件
    - F2 文件树
    - ctrl + p 文件跳转
    - \<leader\>a 全局搜索
    - \<leader\>j 跳转指定行
    - s + 字母 根据指示跳转光标
    - gb 切换buffer
    - ctrl + h/l 左右buffer切换 
    - \<leader\>fb 寻找buffer并切换
    - ctrl + . 尝试开启补全
    - gd 跳转到定义
    - gy 跳转到类型定义
    - gi 跳转到实现
    - gr 跳转到被引用的地方
    - \<leader\>h 查找光标指向符号的帮助
    - \<leader\> -/= 查找上一个/下一个补全



