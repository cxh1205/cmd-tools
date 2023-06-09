# cmd-tools

一个cmd工具箱，大部分情况下将文件拖到cmd文件上生效。

## 0可写.cmd

- 生效方式：拖入**单个**文件

- 效果：将文件属性改为可读写

## 0只读.cmd

- 生效方式：拖入**单个**文件

- 效果：将文件属性改为只读

## 30分钟后关机.cmd

- 生效方式：**双击**

- 效果：30分钟后关闭电脑

## 强制删除.cmd

- 生效方式：拖入**单个**文件

- 效果：强制删除某一个无法删除的文件，为了安全每次仅支持拖入一个

## MD5.cmd

- 生效方式：拖入**多个**文件

- 效果：分别计算每一个文件的MD5值，如果仅拖入2个文件，则比较2个文件是否相同