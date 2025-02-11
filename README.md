## 博客介绍

<p align=center>
  <a href="http://43.136.176.80/">
    <img src="https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/avatar/9344e2873728d46043bb9f9be7444314.jpg" alt="风丶宇的个人博客" style="border-radius: 50%">
  </a>
</p>



<p align=center>
   基于Springboot + Vue 开发的前后端分离博客
</p>
<p align="center">
   <a target="_blank" href="https://github.com/MaidSG/blog">
      <img src="https://img.shields.io/hexpm/l/plug.svg"/>
      <img src="https://img.shields.io/badge/JDK-1.8+-green.svg"/>
      <img src="https://img.shields.io/badge/springboot-2.4.2.RELEASE-green"/>
      <img src="https://img.shields.io/badge/vue-2.5.17-green"/>
      <img src="https://img.shields.io/badge/mysql-8.0.20-green"/>
      <img src="https://img.shields.io/badge/mybatis--plus-3.4.0-green"/>
      <img src="https://img.shields.io/badge/redis-6.0.5-green"/>
      <img src="https://img.shields.io/badge/elasticsearch-7.9.2-green"/>
      <img src="https://img.shields.io/badge/rabbitmq-3.8.5-green"/>
   </a>
</p>

[在线地址](#在线地址) | [目录结构](#目录结构) | [项目特点](#项目特点) | [技术介绍](#技术介绍) | [运行环境](#运行环境) | [开发环境](#开发环境) | [项目截图](#项目截图) | [快速开始](#快速开始) | [注意事项](#注意事项) | [项目总结](#项目总结) | [交流群](#交流群)

## 在线地址

**项目链接：**[阿昱的博客](http://43.136.176.80/)

**后台链接：**[后台管理系统](http://43.136.176.80:8081/login)

测试账号：512256764@qq.com，密码：1234567，可登入后台查看。

**Github地址：** [[MaidSG/blog: 基于SpringBoot + Vue 开发的前后端分离博客，支持QQ第三方登录、在线聊天、发布说说等功能。 (github.com)](https://github.com/MaidSG/blog)](https://github.com/MaidSG/blog)

**Gitee地址：** [https://gitee.com/feng_meiyu/blog](https://gitee.com/feng_meiyu/blog)

**在线接口文档地址：** [[个人博客api文档](http://43.136.176.80/api/doc.html#/home)](https://www.talkxj.com/api/doc.html)

您的star是我坚持的动力，感谢大家的支持，欢迎提交pr共同改进项目。

## 目录结构

前端项目位于blog-vue下，blog为前台，admin为后台。

后端项目位于blog-springboot下。

SQL文件位于根目录下的blog-mysql8.sql，需要MYSQL8以上版本。

可直接导入该项目于本地，修改后端配置文件中的数据库等连接信息，项目中使用到的关于阿里云功能和第三方授权登录等需要自行开通。

当你克隆项目到本地后可使用邮箱账号：admin@qq.com，密码：1234567 进行登录，也可自行注册账号并将其修改为admin角色。

本地访问接口文档地址：[http://127.0.0.1:8080/doc.html](http://127.0.0.1:8080/doc.html)

**ps：请先运行后端项目，再启动前端项目，前端项目配置由后端动态加载。** 

```
blog-springboot
├── annotation    --  自定义注解
├── aspect        --  aop模块
├── config        --  配置模块
├── constant      --  常量模块
├── consumer      --  MQ消费者模块
├── controller    --  控制器模块
├── dao           --  框架核心模块
├── dto           --  dto模块
├── enums         --  枚举模块
├── exception     --  自定义异常模块
├── handler       --  处理器模块（扩展Security过滤器，自定义Security提示信息等）
├── service       --  服务模块
├── strategy      --  策略模块（用于扩展第三方登录，搜索模式，上传文件模式等策略）
├── util          --  工具类模块
└── vo            --  vo模块
```

## 项目特点

- 前台参考"Hexo"的"Butterfly"设计，美观简洁，响应式体验好。
- 后台参考"element-admin"设计，侧边栏，历史标签，面包屑自动生成。
- 采用Markdown编辑器，写法简单。
- 评论支持表情输入回复等，样式参考Valine。
- vue音乐播放器组件，调用网易云开发api支持在线搜索歌曲。
- 前后端分离部署，适应当前潮流。
- 接入第三方登录，减少注册成本。
- 支持发布说说,游客可评论点赞
- 留言采用弹幕墙。
- 支持代码高亮和复制，图片预览，深色模式等功能，提升用户体验。
- 搜索文章支持高亮分词，响应速度快。
- 新增文章目录、推荐文章等功能，优化用户体验。
- 新增在线聊天室，WB实现。支持撤回、语音输入、统计未读数量等功能。
- 新增aop注解实现日志管理。  
- 支持动态权限修改，采用RBAC模型，前端菜单和后台权限实时更新。
- 后台管理支持修改背景图片，博客配置等信息，操作简单，支持上传相册。
- 代码支持多种搜索模式（Elasticsearch或MYSQL），支持多种上传模式（OSS或本地），可支持配置。
- 代码遵循阿里巴巴开发规范，利于开发者学习。

## 技术介绍

**前端：** vue + vuex + vue-router + axios + vuetify + element + echarts

**后端：** SpringBoot + nginx + docker + SpringSecurity + Swagger2 + MyBatisPlus + Mysql + Redis + elasticsearch + RabbitMQ + MaxWell + Websocket

**其他：** 接入QQ登录，接入腾讯云人机验证、websocket

## 运行环境

**服务器：** 腾讯云2核4G Ubuntu

**CDN：** 阿里云全站加速

**对象存储：** 腾讯云COS

这套搭配响应速度非常快，可以做到响应100ms以下。

**最低配置：** 1核2G服务器（关闭ElasticSearch）

## 开发环境

|开发工具|说明|
|-|-|
|IDEA|Java开发工具IDE|
|HbuilderX|Vue开发工具IDE|
|Navicat|MySQL远程连接工具|
|Another Redis Desktop Manager|Redis远程连接工具|
|X-shell|Linux远程连接工具|
|Xftp|Linux文件上传工具|

|开发环境|版本|
|-|-|
|JDK|1.8|
|MySQL|8.0.20|
|Redis|6.0.5|
|Elasticsearch|7.9.2|
|RabbitMQ|3.8.5|

## 项目截图

![](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/avatar/Snipaste_2023-02-19_16-10-11.png)

## 快速开始

### 项目环境安装

详见文章https://aql0chlim8.feishu.cn/wiki/wikcn7usC3z7p9IisKzDK2JwV4f

### Docker部署项目

详见文章[https://aql0chlim8.feishu.cn/wiki/wikcn7usC3z7p9IisKzDK2JwV4f](https://www.talkxj.com/articles/13)

## 注意事项

- 项目拉下来运行后，可到后台管理页面网站配置处修改博客相关信息.
- 邮箱配置，第三方授权配置需要自己申请。
- ElasticSearch需要自己先创建索引，项目运行环境教程中有介绍。

## 项目总结

博客作为新手入门项目是十分不错的，项目所用的技术栈覆盖的也比较广，适合初学者学习。主要难点在于权限管理、第三方登录、websocket这块。做的不好的地方请大家见谅，有问题的或者有好的建议可以私聊联系我。







