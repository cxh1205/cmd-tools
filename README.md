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

- 生效方式：拖入**单个或多个**文件

- 效果：分别计算每一个被拖入的文件的MD5值，如果仅拖入2个文件，则比较2个文件是否相同

## 创建新版本文件.cmd

- 生效方式：拖入**单个**文件，且命名格式为MMDDvX-名称.后缀名

- 效果：根据拖入的文件创建新版本文件，其中MMDD为今天的日期，例如0101；X为版本号，例如1。如果今天是2023年10月21日，拖入的文件名为“1001v1-xxx.txt”，则新建的文件名为“1021v2-xxx.txt”

## 创建新版本文件.cmd

- 生效方式：拖入**单个或多个**快捷方式文件

- 效果：将该快捷方式的文件名中的“ - 快捷方式”去掉，例如“xxx - 快捷方式.lnk”改为“xxx.lnk”