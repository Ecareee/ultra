# ultra

OPPO Watch 42mm 表盘，基于酷安大佬 [汤圆lite](http://www.coolapk.com/u/20395554) 的 apk
文件通过 [apk2gradle](https://github.com/Mosect/apk2gradle) 实现了二次开发。

~~由于 [SmaliPlugin](https://github.com/Mosect/Android-SmaliPlugin) 的某个未知 bug，取消引入了该插件，删除了
smali 文件夹，把 apk 内的 classes.dex 转成了 jar 包并在 gradle 中引入了依赖，要是想修改类，就要把要修改类从
jar 包删除，然后在项目 java 文件夹新建相同包名，再把要修改类重新写一遍。~~

2026/01/11 由于之前使用的是 JDK 17 和 Gradle 7.0.2，构建时提示了不受支持的 Gradle JVM，当时脑抽点了升级到
Gradle 7.2，然后好像导致 SmaliPlugin 出了问题。现在使用 JDK 11 和 Gradle 7.0.2，重新引入了
SmaliPlugin，将之前修改的 smali 代码迁移到了 java。