# 项目规划

| 项目               | 源码                                                                                             |
| ------------------ | ------------------------------------------------------------------------------------------------ |
| web 网站           | [https://github.com/swiftdo/web-team-boke.git](https://github.com/swiftdo/web-team-boke.git)     |
| App（iOS\Android） | [https://github.com/swiftdo/app-team-boke.git](https://github.com/swiftdo/app-team-boke.git)     |
| 后端 API           | [https://github.com/swiftdo/team-boke.git](https://github.com/swiftdo/team-boke.git)             |
| 后台管理           | [https://github.com/swiftdo/admin-team-boke.git](https://github.com/swiftdo/admin-team-boke.git) |


## 通过 freezed & json_serializable 生成模型

需要安装插件 `freezed`.

```shell
fvm flutter packages pub run build_runner build --delete-conflicting-outputs
# or 
fvm flutter packages pub run build_runner watch --delete-conflicting-outputs
```

可参考文章 [https://wingpage.net/content/Flutter/Flutter%20freeze.html](https://wingpage.net/content/Flutter/Flutter%20freeze.html)

## 国际化Intl方案

> 大陆的简体zh_CN,港台的繁体zh_HK和zh_TW

使用方式，可直接参考 [https://juejin.cn/post/6844903823119482888](https://juejin.cn/post/6844903823119482888)


## auto_route 的使用

```shell
fvm flutter packages pub run build_runner watch 
fvm flutter packages pub run build_runner build          
```

## flutter_gen 的使用

安装使用

```shell
dart pub global activate flutter_gen
```

添加依赖参考文档。

配置：

```shell
fluttergen -c pubspec.yaml 
```

资源生成

```shell
fvm flutter packages pub run build_runner build
```
