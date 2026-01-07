# ultra

OPPO Watch 42mm 表盘，基于酷安大佬 [汤圆lite](http://www.coolapk.com/u/20395554) 的 apk
文件通过 [apk2gradle](https://github.com/Mosect/apk2gradle) 实现了二次开发。

由于 [SmaliPlugin](https://github.com/Mosect/Android-SmaliPlugin) 的某个未知 bug，取消引入了该插件，删除了
smali 文件夹，把 apk 内的 classes.dex 转成了 jar 包并在 gradle 中引入了依赖，要是想修改类，就要把要修改类从
jar 包删除，然后在项目 java 文件夹新建相同包名，再把要修改类重新写一遍。