/*
 Navicat Premium Data Transfer

 Source Server         : LocalHost
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 18/02/2023 22:45:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_article
-- ----------------------------
DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL COMMENT '作者',
  `category_id` int(0) NULL DEFAULT NULL COMMENT '文章分类',
  `article_cover` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文章缩略图',
  `article_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `article_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '内容',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '文章类型 1原创 2转载 3翻译',
  `original_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '原文链接',
  `is_top` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否置顶 0否 1是',
  `is_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除  0否 1是',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态值 1公开 2私密 3评论可见',
  `create_time` datetime(0) NOT NULL COMMENT '发表时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_article
-- ----------------------------
INSERT INTO `tb_article` VALUES (54, 1, 187, 'https://static.talkxj.com/articles/3dffb2fcbd541886616ab54c92570de3.jpg', '测试文章', '恭喜你成功运行博客，开启你的文章之旅吧。', 1, '', 0, 0, 1, '2022-01-24 23:33:56', NULL);
INSERT INTO `tb_article` VALUES (55, 1, 188, 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/e171f8df5cfd598ac10689a6584ae6fe.png', 'Mybatis - TypeHandler', '# TypeHandler\n\n# TypeHandler 是什么？\n\n<strong>TypeHandler 是 Mybatis 中 Java 对象和数据库 JDBC 之间进行类型转换的桥梁</strong>\n\nMybatis 使用 TypeHandler 这个类来处理<strong>java 基本数据</strong>类型与<strong>数据库中存储的数据类型</strong>之间的转换，可以<strong>自定义 TypeHandler</strong>来处理特殊类型的转换，比如特殊字符串分割后存放到 java 数组里面，我们可以获取到后进行字符串拼接和拆分，但是当这种特殊情况有多个时，比如工单图片 url 按逗号隔开，同时工单联系人也是有多个并且按逗号隔开，如果先获取字符串，再写字符串分割，那么就要写两次，但是定义了 TypeHandler 后，只要识别出按逗号隔开就自动进行转换，分割逗号的代码只用写一次就可以多次使用，这就是处理数据的一个好方法。\n\nTypeHandler 接口：\n\n![boxcnYvBWM0UMrf2hVuV2eZmJyd.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/321b6a46b16736c696fb86a2585bc936.png)![](static/boxcnYvBWM0UMrf2hVuV2eZmJyd.png)\n\n<strong>自定义字段多项逗号隔开转数组格式:</strong>\n\n自定义 <strong>typehandler </strong>需要注解上 java 接收时的类型和数据库中对应需要转换的类型，也可以去配置文件中定义，配置文件中定义的话全局生效，类名上定义的话，只有在 resultMap 中指定才能使用；\n\n![boxcnAg4r6iZpGlXhxQ7uekow3b.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/aaa84142540c3d78e3d55c85ffe81a8f.png)![](static/boxcnAg4r6iZpGlXhxQ7uekow3b.png)\n\n![boxcnBmgH5Bzr79ZABIgj2ttjQe.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/2a218e60820fe045308038dfcde1b8b8.png)![](static/boxcnBmgH5Bzr79ZABIgj2ttjQe.png)', 1, '', 0, 0, 1, '2023-02-18 17:11:03', NULL);
INSERT INTO `tb_article` VALUES (56, 1, 188, 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/a5cbecf61b3f9885ba4c80e549cbf3b6.png', 'Maven实习随记', '# 实习随记\n\n# 解决 idea 拉取代码后，莫名出现识别不了包名类名，同级类无法导入的问题\n\n其实这个问题经常出现在同事频繁删除添加代码后提交然后自己没有及时拉取代码；也有可能是 idea 的问题，公司也不可以几个项目组全员人手一个正版 idea🙄，d 版隔三岔五就会出点问题；\n\n因为启用版本管理后，代码文件会经常变动，原本新提交的类因为操作不当会导致 idea 的缓存里没有这一项；\n\n解决办法目前我用的是清理 idea 的缓存：\n\n![boxcnNDoWxmtTbjAAHKzMEyZEH8.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/0aeb1da61d6727fe0a06c674bbdeacf8.png)![](static/boxcnNDoWxmtTbjAAHKzMEyZEH8.png)\n\n![boxcneADLjLeHkppZFcDsiDTAPd.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/11ccf6370e64905306dbdf03dfd3c7ed.png)![](static/boxcneADLjLeHkppZFcDsiDTAPd.png)\n\n# <strong>解决手动导入 jar 包后导致项目使用 maven install 部署不成功</strong>\n\n情形描述：\n\n同事开发的过程中引入了第三方的 jar 包，这样的 jar 包虽然可以被 idea 识别，项目中可以直接导入，但是当使用 maven 打包部署时由于 jar 包是手动导入的，无法被 maven 识别，\n\n在执行 mvn clean install 命令时会报错：\n\n找不到 xxxx 程序包，\n\n解决方法：\n\n原因是因为 maven 并没有再本地仓库中检查到这个 jar 包，而且去官方因为没有 groupid，artificial 等信息更不可能拉到详细的依赖；\n\n解决思路就是通过 maven istall 名令添加额外参数将 jar 包放置本地的仓库里，项目 pom 文件添加上依赖，这样 maven 就能按流程将项目打包了；\n\n- 首先需要将导入的 jar 包导入到项目的 Libraies 中；\n\n![boxcnOpaiHwYX1obopAeTyVRpFe.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/1b9ca4b3632884d995d318fa13abf869.png)![](static/boxcnOpaiHwYX1obopAeTyVRpFe.png)\n\n- 导入后使用 maven goal 配置好参数后导入到项目中；\n\n![boxcnBfbJEGeLbHKo9mBVJOiOff.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/00890c05ad2ff4098c6e39f4e73c337a.png)![](static/boxcnBfbJEGeLbHKo9mBVJOiOff.png)\n\n参数自定义，不要和本地的依赖重名；jar 包路径可以从 Libraies 上复制；\n\n![boxcnIPogPRvOh5P5XICJb6URqd.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/9c86f063440fd5594c3bac36c87946b3.png)![](static/boxcnIPogPRvOh5P5XICJb6URqd.png)\n\n推荐使用记事本编辑好后复制到 maven goal（这里指的是 idea 执行 maven 命令的插件）上。\n\n![boxcnKuQXvkZgoa9FGmU3Qim2uL.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/a83ab3a567e927ede5ceaf8372965a40.png)![](static/boxcnKuQXvkZgoa9FGmU3Qim2uL.png)\n\n![boxcnDI33yt38Fqd6GeTtdPKUPM.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/fffe8d3a87dda423bb3494b468e841f8.png)![](static/boxcnDI33yt38Fqd6GeTtdPKUPM.png)\n\n执行命令后项目能够安装成功，但是之后如果想快捷的只用 maven install 的话需要在项目 pom 中添加 maven 依赖\n\n参数和依赖对比：\n\n![boxcnNbhYAV2aVtVypQy4J5RQtf.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/895f3710b9038ac1f09ea153fe884694.png)![](static/boxcnNbhYAV2aVtVypQy4J5RQtf.png)\n\n添加依赖后每次直接执行 maven install 就可以了\n\n# 解决 IDEA 控制台调试 SpringBoot 时报错：Command line is too long. Shorten command line for SpringBootMainApplication or also for App\n\n遇到这个问题的原因是 debug 时 mybatis 会返回大量的调试信息，这样会导致命令行太长，Idea 根据命令行内容传递给 JVM，命令行太长会导致数据丢失，从而使整个 SpringBoot 应用无法成功启动。\n\n这个可以通过修改 mybatis 的设置，将长的类路径（classpath）写入文件加载；\n\n在项目目录的.idea/workspace.xml 中进行相应的配置：\n\n在<strong>PropertiesComponent</strong>标签下加上这个属性：\n\n```\n<property name=\"dynamic.classpath\" value=\"true\" />\n```\n\n配置的主要功能就是<strong>开启 IDEA 的动态类路径</strong>，将太长的<u>类路径写入文件</u>，然后由应用程序启动器读取并通过系统<strong>类加载器加载</strong>。', 1, '', 0, 0, 1, '2023-02-18 17:17:28', NULL);
INSERT INTO `tb_article` VALUES (57, 1, 189, 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/2a9aeb008a4b54c3c2d7c61f1a4821e3.png', 'SQL学习笔记', '# SQL 学习笔记\n\n## 表连接的七种用法\n\n![boxcntUf5Pe6f7cdwRyfpQVbGLb.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/8bc72b05a4812c6da5819b39c4c1b2e9.png)![](static/boxcntUf5Pe6f7cdwRyfpQVbGLb.png)\n\n内连接（Inner Join）结果最小，筛选的范围最大，需要两表的连接键都满足条件。\n\n除内连接外还有三种不同的连接方式（左/右连接，外连接），但是另外这三种都属于内连接，内连接与他们的区别是内连接将结果集中不满足两表交集的部分删除了\n\n左连接与右连接的区别：\n\n两种连接方式都是侧重连接两张表中其中一张表，\n\n<strong>左连接(left Join)</strong>是保留左表，右表与左表 key 不同的地方补 null，\n\n<strong>右连接(right Join)</strong>是保留右表，左表与右表 key 不同的地方补 null；\n\n主要的连接按连接方式区分为两种，内连接和外连接(左/右连接，外连接)\n\n外连接中的三种连接按条件的不同又可以各种细分出两种，所以 SQL 表连接总共有七种连接方式（1 +  2 + 2 + 2）；\n\n表连接并非只用于两种不同的表，我们可以运用表连接对单张表进行筛选\n\n分组操作\n\n对表进行分组后方便统计和操作，比如去重，或者统计出重复的个数,而对于结果集条件的筛选是使用 order by 或者 having + 聚合函数的方式；\n\n# 多表查询的知识\n\n## 交叉连接（笛卡尔积）\n\nMySQL 中除了内外连接的方法进行多表查询，还可以使用交叉连接，<strong>交叉连接（CROSS JOIN）</strong>用来返回连接表的笛卡尔积，交叉连接在多表查询中不建议经常使用，因为产生的结果集会非常的巨大；\n\n交叉连接可以用于单表条件查询，查询条件涉及到单表中的相邻数据时使用\n\n# 字符串，数据格式有关的处理\n\n### 有关日期的处理\n\n<strong>SQL server 日期差使用 DATEDIFF()函数</strong>\n\n![boxcnA9WjWARZBM4N5D7lcD3sLc.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/8fba8a351e99f74d42819763df6fcce0.png)![](static/boxcnA9WjWARZBM4N5D7lcD3sLc.png)\n\nMySQL 使用 DATADIFF(enddate,startdate)\n\n![boxcn5Zp1a0E44iS6OqpO6EW20u.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/4330133bfe8463a0a914649eeb912511.png)![](static/boxcn5Zp1a0E44iS6OqpO6EW20u.png)\n\n# 有关行列转换的操作\n\n## UNION 操作符实现列转行（多列转一行）\n\n![boxcngO6Fy2XOQ428MyAyQ4hGXg.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/8ecbc9b2a4cfddd45bda51864b820384.png)![](static/boxcngO6Fy2XOQ428MyAyQ4hGXg.png)\n\n![boxcnPMyohbkkWsCwD2GDRPLqxc.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/74ebe82a9f769c26c93bf4ff026c5df4.png)![](static/boxcnPMyohbkkWsCwD2GDRPLqxc.png)\n\n## PIVOT,UNPIVOT 操作\n\nPIVOT 可以将一列的数值（多行的值）转换为具有相同标识的多列，为了达到数据的正确性，会取一列里分组后唯一的标识，因此 pivot 函数里需要指定聚合函数；\n\n除此之外还要指定转换后变成列标题的列字段和所有要显示出来的列值，FOR [预设标题列字段]  IN ( [预设标题列字段元素 A] , [预设标题列字段元素 B] ...   )\n\n### 语法：\n\n![boxcn7I8bauS7gknLc5d7Fenpop.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/be3a5597f1f09f4c1f84d9c7732f6285.png)![](static/boxcn7I8bauS7gknLc5d7Fenpop.png)\n\n### UNPIVOT 语法\n\n![boxcn8kqlkGf6w2fIlDGEud4f0X.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/2cd23a30f2be7dc4eeee7382699fb4ba.png)![](static/boxcn8kqlkGf6w2fIlDGEud4f0X.png)', 1, '', 0, 0, 1, '2023-02-18 17:22:54', NULL);
INSERT INTO `tb_article` VALUES (58, 1, 189, 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/89e8ecc587033c3da71937e9a29abd32.png', '数据库进阶知识笔记', '# 数据库高级\n\n# 数据库的三级模式结构\n![image.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/54e3bd7928703ed3c1e604dc1332834a.png)\n\n- 模式是数据库中是全体数据的逻辑结构和特征的描述，是所有用户的公共数据视图，一个数据库只有一个模式\n- 外模式是模式的子集，是数据库用户能够看见和使用的局部数据的逻辑结构和特征的描述\n- 内模式是一个数据库的物理结构和存储方式的描述，是数据在数据库内部的表示方式。\n\n# 事务\n\n事务有四大特性\n\n<strong>原子性(全部成功或么失败)，一致性（数据库完整性约束，转账操作），隔离性（事务间互相隔离），持久性</strong>\n\n# 事务隔离级别总结\n\nSQL 定义了四个标准隔离级别\n\n<strong>READ-UNCOMMITTED(读取未提交)</strong> ： 最低的隔离级别，允许读取尚未提交的数据变更，可能会导致脏读、幻读或不可重复读。\n\n<strong>READ-COMMITTED(读取已提交)</strong> ： 允许读取并发事务已经提交的数据，可以阻止脏读，但是幻读或不可重复读仍有可能发生。\n\n<strong>REPEATABLE-READ(可重复读)</strong> ： 将其他事务对数据的操作隔离，同一事物内对同一字段的多次读取结果一致，数据只能由当前事务修改，可以阻止脏读和不可重复读，但幻读仍有可能发生。\n\n<strong>SERIALIZABLE(可串行化)</strong> ： 最高的隔离级别，完全服从 ACID 的隔离级别。所有的事务依次逐个执行，这样事务之间就完全不可能产生干扰，也就是说，该级别可以防止脏读、不可重复读以及幻读。\n\nMySQL 的隔离级别是靠锁（可串行）和 MVCC（读取已提交，可重读）共同实现的。\n\nMysql InnoDB 存储引擎的默认支持隔离级别是可重读级别，Mysql8.0 参考命令：\n\n```\nSELECT @@transaction_isolation\n```\n\n# MySQL 基础知识\n\n<strong>MySQL 架构</strong>\n\n![boxcnNt0rTfFvdHH1HQQlxIy3hh.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/8d4670e30ba8dcee4bfaed70ac636b84.png)![](static/boxcnNt0rTfFvdHH1HQQlxIy3hh.png)\n\nMySQL 的存储引擎采用插件式架构，支持多种存储引擎，存储引擎基于表，而非数据库。默认存储引擎（storage_engine）是 InnoDB，InnoDB 支持行级锁和表级锁，同时实现了 SQL 标准的四个隔离级别事务支持（可提交回滚）。InnoDB 支持外键，但是外键对性能有损耗，影响数据库插入速度。外键概念需要在应用层解决。\n\n<strong>MySQL 索引</strong>\n\n本质是一种有序的数据结构，常见的索引结构有 B 树(多路平衡查找树)，B+ 树,Hash,红黑树。InnoDB 使用的是 B+ 树。\n\n<strong>主键索引 PrimaryKey，一张表只能有一个主键，不能为 null，不能重复。</strong>\n\n<strong>主键索引属于聚簇索引，其他辅助索引属于非聚簇索引。</strong>\n\n除主键索引外的索引是二级索引，其原理是叶节点存储主键，通过主键去查找数据。\n\n<strong>唯一索引 UniqueKey,不能重复，但可以为 null;唯一索引主要为保证数据列的唯一不重复性，并不能提高查询效率。</strong>\n\n<strong>普通索引 Index，快速查询数据，运行重复和 NULL 值。</strong>\n\n<strong>前缀索引(Prefix) ：前缀索引只适用于字符串类型的数据。前缀索引是对文本的前几个字符创建索引，相比普通索引建立的数据更小， 因为只取前几个字符。</strong>\n\n<strong>全文索引(Full Text) ：全文索引主要用于检索大文本数据中的关键字的信息</strong>\n\n# MySQL 并发事务\n\n## 并发事务的控制方式\n\nMySQL 中并发事务的控制方式有两种，读写锁和 MVCC 多版本并发控制。\n\n锁有两种，<strong>共享锁（S 锁）和排他锁（X 锁）</strong>\n\n共享锁允许多个事务同时获取，事务在读取记录时获取。\n\n排他锁是事务在修改记录时获取，只能由一个事务获取。\n\n从锁的粒度上划分又可划分为表级锁和行级锁。\n\nMVCC 是多版本并发控制方法，原理是将数据分为多个版本存放，事务通过全局的版本分配器来为每一行数据设置版本号，版本号是唯一的。\n\n<strong>行级锁与表级锁</strong>\n\n<strong>锁需要根据事务的隔离级别来使用，不同隔离级别下锁可能会失效。例如在</strong><strong>已提交读（READ COMMITTED）</strong><strong>隔离级别下，</strong><strong>间隙锁(Gap Locks)</strong><strong>和</strong><strong>临键锁(Next-Key Locks)</strong><strong>会失效。</strong>\n\n表级锁对非索引字段加锁，作用的范围是一整张表，容易触发锁冲突，由于是对表加锁，没有行级锁快。\n\n<strong>行级锁针对索引字段加锁，MySQL 有三种实现方式，分别是记录锁，间接锁，临键锁。</strong>\n\n<strong>记录锁对于查询后的 n 条数据加锁，（唯一约束）</strong>\n\n<strong>间隙锁是根据查询条件中的查询范围对 N 条数据进行加锁的。</strong>\n\n<strong>临键锁是根据查询条件中查询范围的 N 条以及最后一条记录的右区间锁。</strong>', 1, '', 0, 0, 1, '2023-02-18 17:29:20', '2023-02-18 17:30:39');
INSERT INTO `tb_article` VALUES (59, 1, 188, 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/f43463921f96513ae770487495eb8344.png', 'JAVA基础笔记', '# JAVA 基础\n\n# JAVA 变量\n\n## 变量标识符与 java 保留关键字\n\n变量不能由数字开头，一种说法是编译器做词法分析时数字开头会被当作一个字面量而非标识符。\n\n## 型参（传递来的变量）与实参（传给方法的变量）\n\n变量按照具体代码中的使用归类可以归为：\n\n<strong>形参：</strong><strong>定义方法</strong>时的变量，作为传递来的局部变量在方法中使用\n\n<strong>实参：</strong>要有确定的值，传给函数使用<strong>。</strong>\n\n## Java 中变量的传递（只有值传递，没有引用传递）\n\njava 只有<strong>值传递</strong>，基本数据类型传递值，引用类型传递对象在堆中的地址。\n\n<strong>个人理解：</strong>\n\n因为 java 中的数据已经被分为基本数据类型和引用类型了，一种是值，另外一种是内存中的地址，这一点已经将数据按值传递和按引用传递区分出来了，使用引用类型的对象作为形参就达到引用传递的效果。\n\n## 基本数据类型与引用类型\n\n<strong>Java 有 8 种基本数据类型</strong>，同时基本类型都有对应的引用数据类型，被称为<strong>包装类型；</strong>\n\n六种数字 + 布尔 + 字符类型\n\n整型：byte,short,int,long\n\n浮点型：float,double\n\n字符型：char\n\n布尔型：boolean\n\n![boxcnpRVMDqcAIF1U2BqM4qTHtd.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/0eaecf6aa24e6916376888b21d3be848.png)![](static/boxcnpRVMDqcAIF1U2BqM4qTHtd.png)\n\n![boxcn4Re2QZRBTPVcp4UerGrq0d.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/0c6c0fb236069f13a6762bb8e03c4d55.png)![](static/boxcn4Re2QZRBTPVcp4UerGrq0d.png)\n\nbyte,short,char 可以隐式转换为 int,支持 Switch 表达式，其包装类型也支持，jdk1.7 后 String 也支持了。\n\n<strong>引用类型不赋值的话默认为 null</strong>,null 是所有引用类型的默认值（没有赋默认值的时候）包装类也一样，但是<strong>如果包装类被 final 修饰时需要为其显式赋值</strong>。\n\n### 基本类型与包装类的存储位置：\n\n包装类型属于 Object,存放在堆中\n\n基本类型做<strong>成员变量</strong>时存放在堆中\n\n基本类型做<strong>局部变量</strong>时存放在 jvm 栈中的局部变量表\n\n### 包装类型的缓存机制\n\n四种<strong>整型</strong>的包装类默认缓存范围都是【-128，127】\n\nCharacter 创建的数值在【0，127】\n\nBoolean 直接返回 True 和 False\n\n<strong>对于超出缓存的包装类对象的值都会在堆中产生，比较时应该使用 equals 方法。</strong>\n\n![boxcniDEhOG1i1zeywqtOsoqfTL.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/1ccb64a10b7673ca2b6873e746028b7e.png)![](static/boxcniDEhOG1i1zeywqtOsoqfTL.png)\n\n### 基本数据类型产生的一些问题\n\n<strong>浮点数运算的精度缺失问题</strong>\n\n- BigDecimal 类以及提供的成员方法。\n\n<strong>超过 long 的整型</strong>\n\n- 超出 long 可以使用 BigInteger 来存储，因为其内部由 int[]数组来存储整型数据，但是运输效率会差一点。\n\n## 成员变量与局部变量\n\n<strong>语法形式</strong>\n\n<strong>存储方式</strong>\n\n<strong>生存时间</strong>\n\n### 修饰符区别\n\n成员变量和局部变量都可以被 final 修饰，<strong>局部变量</strong>不能被<strong>访问控制符</strong>和<strong>static</strong>修饰\n\n### 默认值\n\n- 局部变量不会自动赋值，需要自己为其赋值，如果没有赋值编译时会不通过。\n- 成员变量除被 final 修饰后需要显式赋值外，其他情况会自动赋值；\n- 如果 final 修饰了基本类型的变量，那么这个变量的值是不可更改的，如果是引用类型的变量，不变的只有指向这个对象的内存地址，对象自带的成员变量是可以修改的。\n- String 对象的使用“=”赋值与使用 new 赋值的结果是不同的，参考：\n\n## 静态变量（static 修饰的成员变量）\n\n静态变量被<strong>类的实例对象</strong>所共享，<strong>随所属类的加载而产生，随所属类的回收而被释放；</strong>\n\njdk8 后的方法区不在 jvm 中而是在本地内存中，静态变量属于类的信息，jvm 规范中存放于方法区内，逻辑上是属于堆中。\n\n## 静态方法与实例方法\n\n<strong>调用方式：</strong>\n\n<strong>静态方法</strong>可以由<strong>类和对象</strong>调用，<strong>实例方法</strong>调用前必须先创建实例。\n\n<strong>访问类成员：</strong>\n\n对于<strong>本类中的变量和方法</strong>来说，<strong>静态方法</strong>中可以访问静态的变量和方法，实例方法和实例的成员变量需要先<strong>创建实例</strong>才可以在静态方法中使用\n\n实例方法中声明的变量，如果是基本类型的话方法生命周期结束的时候会被回收，应该用 final 修饰成常量，这样可以保证方法执行完后被 gc 回收。\n\n# JAVA 类\n\n## 面向对象三大特性\n\n<strong>封装，继承，多态</strong>；\n\n<strong>封装可以控制其他对象的成员变量，方法的访问。</strong>\n\n封装的变量和方法通过访问修饰符来限定作用范围，范围大小为<strong>public>protected(同一包，不同包的子类)>default（同一包内）>private（同一类中）</strong>\n\n有继承关系的类中，<strong>子类可以拥有父类的所有属性和方法（私有的只是拥有，不可访问）</strong>，但是<strong>父类中的私有属性和方法子类无法访问</strong>；\n\n<strong>多态</strong>分为<strong>编译时多态</strong><strong>（方法重载）</strong>和<strong>运行时多态</strong><strong>（方法重写）</strong>\n\n## 重载和重写的区别\n\n重载能让同一个方法处理不同参数的结果，如果一个类中重载了 n 个方法，在编译阶段 java 会根据具体传入的参数去匹配重载的方法。\n\n重写是运行时多态的实现，由于虚拟机在运行时已经将 static 方法做了绑定，所以重写 static 方法的话，执行的时候并不会使用重写后的方法。\n\n## 内部类\n\n<strong>使用内部类的目的</strong>\n\n内部类主要是为了提高安全性，内部类有四种类型，成员内部类，静态内部类，局部内部类，匿名内部类\n\n<strong>成员内部类</strong>\n\n成员内部类由外部类实例化创建的对象创建（Obj.new 内部类()）\n\n<strong>静态内部类</strong>\n\n可以定义静态方法和普通方法，外部类对象想调用静态方法需要用类限定名去获取 Obj.inner\n\n普通方法需要用实例去获取 Obj.inner()\n\n<strong>匿名内部类</strong>\n\n匿名内部类只能\n\n## 接口（约束类的行为）和抽象类（代码复用）\n\n<strong>接口的特性</strong>\n\n接口默认只有包访问权限，全局使用需要声明 public。\n\n接口中的<strong>成员方法</strong>只有声明，没有实现（public abstrat）同时接口用来规范实例对象，不能包含<strong>静态方法</strong>。jdk1.8 中使用可以包含默认方法（default 修饰）\n\n接口中的<strong>成员变量</strong>默认为 final 和 static（不声明也是）,方法默认 public。\n\n<strong>抽象类的特性</strong>\n\n抽象类可以有构造方法，抽象方法，普通方法\n\n<strong>最终类，最终方法的特性</strong>\n\nfinal 修饰的类/方法被称为最终类/最终方法\n\n- 都不能被实例化\n\n  - 不管抽象类还是接口定义的方法都没有<strong>方法体</strong>，实例化必须要加载类，如果不知道方法体，是不能加载的。\n- 都可以包含抽象方法\n- 都有默认实现方法\n\n## JAVA 中的单例模式\n\n<strong>单例的介绍</strong>\n\n保证一个类仅有一个实例，并提供一个访问它的全局访问点\n\n<strong>单例的实现模式</strong>\n\n<strong>参考</strong>\n\n<strong>饿汉模式</strong>\n\n优点： 实例的创建不由需求决定，使用静态常量保存实例有利于 jvm 中的线程安全\n\n缺点： 非懒加载，长时间占用内存空间。\n\n三种实现：\n\n- 使用静态常量存实例对象，\n- 使用枚举类，因为枚举类编译后为为 final class，不会被破坏，是线程安全的。\n- 创建对象放在静态代码块中\n\n<strong>懒汉模式</strong>\n\n类提供方法（getInstance()）用于外界获取实例，多线程下会发生线程安全问题\n\n两类实现：\n\n- 方法中直接创建单例（单/多线程）\n- 方法中调用内部类创建的单例\n\n需要给创建实例的代码<strong>加锁</strong>，建议<strong>双层判空</strong>，提供效率。\n\n需要为单例声明<strong>volatile 类型</strong>，因为创建实例（new 对象）不是一个原子指令即使加锁后仍然有可能发生未初始化实例就被外部获取的风险。\n\n![boxcn2L1hjiXxXpjDup6likLCLd.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/000a5e78cec3834b9d4fe53e257924e9.png)![](static/boxcn2L1hjiXxXpjDup6likLCLd.png)\n\n## Object 类\n\nObject 类是所有类的父类,基本上所有自带的方法都是 native 方法（native 相关知识参考：[java 中 native 的用法 - 不止吧 - 博客园](https://www.cnblogs.com/b3051/p/7484501.html)），\n\n常见的方法：\n\n- 对象有关的方法\n\ngetClass() 不可重写\n\nhashCode() 哈希表中对象的哈希码\n\nclone() 可重写，但一般都是调用 Object 的\n\ntoString() 可重写\n\nequals() 比较内存地址，可重写，String 类已经重写了，用于比较字符串的值是否相等\n\n- 线程有关的方法\n\nnotify()\n\nnotifyAll()\n\nwait()\n\nfinalize() gc 回收时触发的操作。\n\n![boxcnyIqd3nW4AHg3O6ckcdrOcf.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/e13057858648efc61edf99922c793b2e.png)![](static/boxcnyIqd3nW4AHg3O6ckcdrOcf.png)\n\n![boxcngRqESop7X0WvxUhi2IudVb.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/9a6a089e6e89eedfc97d9e8ad71edda8.png)![](static/boxcngRqESop7X0WvxUhi2IudVb.png)\n\n### 实现对象的克隆\n\n需要先实现 Cloneable 接口，然后重写 clone()方法，这样的克隆属于浅克隆\n\n实现 Serializable 接口使对象进行序列化和反序列化操作，这样的克隆属于深克隆。\n\n### 对象相等（内存内容相等）对象引用相等（内存地址相等）\n\n### hashCode()的作用\n\n获取<strong>哈希码</strong>（散列码），<strong>哈希码</strong>可以确定该对象在<strong>哈希表中的索引位置，可用于比较对象是否相等。</strong>\n\nHashSet 加入对象时会<strong>先计算哈希码来判断对象的位置</strong>，如果计算的位置已经有对象了，就调用 e<strong>quals()方法检查对象的内部信息是否相同</strong>，两次检查都相同才会忽略对象，有一次不同就会将该对象重新散列到其他的位置，同时加入到 HashSet 中。,hashCode 为主要判断对象相等的方法，equals 为第二层保险\n\n## String 类\n\n### String 初始化\n\n如果使用“=”进行赋值,实际上只创建的一个 String 对象，\"str\"是一个字面值，会存入<strong>字符串常量池</strong>中。\n\n```\nString reference1 = \"str\";\nString reference2 = \"str\"; // 两个String对象同时指向了常量池中的“str”\n```\n\n如果使用了 new 创建的对象由于 jvm 为其分配了两个内存地址，存入了<strong>堆</strong>里；其 equals 的值相等，但是 hashCode 不相等，断言判断为 False\n\n```\nString strObj1 = newString(\"str\");\nString strObj2 = newString(\"str\");\nassertFalse(strObj1 == strObj2);\n```\n\n### String 类的线程安全性，三者都属于 java.lang 包中的最终类\n\nString 中的对象是不可变对象，是线程安全的。\n\nStringBuffer 的方法有同步锁，也是线程安全的。\n\nStringBuilder 的方法未加同步锁是非线程安全的。\n\n### String 类的版本变化\n\n三者都是放在 java.lang 包中；\n\njava9 之前三者都是使用 char[]来保存字符，java9 以后就是使用 byte[]字节来存储字符串；\n\n### 字符串拼接的本质\n\n字符串对象的拼接方式有两种，“+” 和 StringBuilder 的 append()方法，字符串对象通过“+”的字符串拼接方式实际上也是通过调用 StringBuilder 的 append()方法拼接的，实际上在循环中进行拼接的话，编译器就会创建多个 StringBuilder 对象，这也是性能缺陷的原因。\n\n### 字符串有关应用\n\n# JAVA 集合框架（<strong>Java Collections Framework</strong>）\n\nJAVA 集合框架可以归为两种类型的容器，集合与图，JAVA 的集合框架设计用于存放和管理 Java 对象(基础类型需要转成包装类对象)；\n\n两种类型容器之间的区分是按照其存储元素的特性来区分的，集合接口（Collection）存储的元素都是单列元素，存储元素的<strong>值</strong>，图接口（Map）存储的元素是双列元素（关联式存储），存储的是<strong>键值对</strong>（Entry 对象）。\n\n## 集合框架图解\n\n## 集合框架相关工具类\n\n<strong>java.util.Arrays.asList</strong>\n\n用途： 用于将<strong>引用类型数组</strong>转换为<strong>List 接口</strong>的容器。\n\n<strong>asList 的参数必须是 List 接口的泛型对象（可以为单个对象，也可以为对象数组。）</strong>\n\n![boxcnhxBYbsKUetkXx1qv6gNhkf.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/b472e57979f15c21659a35a76ea6341a.png)![](static/boxcnhxBYbsKUetkXx1qv6gNhkf.png)\n\nasList 创建的集合是不可变集合，一般不直接这样给新集合容器赋值，而是将其作为新集合容器的构造参数作为使用。正确示范：\n\n```\nString[] myArray = {\"1\",\"2\",\"3\"};\nArrayList<String> myList = ArrayList<>(Arrays.asList(myArray))；\n```\n\n- 如果想要获取<strong>不可变对象</strong>，则需要使用<strong>Collections.unmodifableList()</strong>方法获取：\n\n```\nList<String> list = new ArrayList<>(Arrays.asList(\"one\", \"two\", \"three\"));\nList<String> unmodifiableList = Collections.unmodifiableList(list);\n```\n\n- 由于 Java 集合操作的是引用类型的对象，基本类型不能直接转换；如果想从基本类型转换为 List 可以使用 jdk1.8 的 Stream 新特性，参考：[实习随记](https://aql0chlim8.feishu.cn/wiki/wikcnnUpb8aoi1rvuOe1IztBrSh#W00IdM2EuoACGKxViT4cEHGlnzc)\n\n## 集合框架常问知识\n\n### fail-fast 事件\n\n对于迭代的中的元素如果进行添加/删除操作，会触发 fail-fast 事件，这个事件是用于提醒开发人员可能存在并发修改的问题。其根本原因是使用增强 for 循环时，如果在遍历的过程中原集合容量发生了改变，那么会导致遍历中的操作数与遍历前操作数不一致，java 就是根据二者的值不相等抛出异常的。\n\n### ArrayList （底层数组，动态扩容，快速随机访问）与 LinkedList （头尾存取，耗内存）区别?\n\n<strong>底层数据结构的区别：</strong>\n\n首先是底层的数据结构不同，ArrayList 底层是数组，可以动态扩容；而 LinkedList 底层使用的是双向链表实现了 List 接口和 Deque 接口（jdk1.8 后，之前是使用双向循环链表，区别：[数据结构篇](https://aql0chlim8.feishu.cn/wiki/wikcnGB4pO1SikXXPmuf3bThcyh#VaMidieOmoc2mExUJ6Yc53zjnFc) ）\n\n<strong>增删查改方面</strong>\n\nArrayList 更适合查数据和改数据\n\nArrayList 未排序情况下查找元素的时间复杂度是 O(n)，排序数组是 O(logn)\n\nLinkedList 唯一的优点是头尾增删快。\n\n<strong>内存方面</strong>\n\nArrayList 需要预留内存，但是 LinkedList 单个节点信息除了<strong>原数据</strong>外还有<strong>前驱节点和后继节点</strong>信息，需要消耗更多空间，一般选择用<strong>ArrayList</strong>。\n\n### LinkedList 与 ArrayDeque,Stack 的比较\n\n<strong>ArrayDeque 比 LinkedList 快的原因：</strong>\n\n内存方面：<strong>ArrayDeque</strong>底层用<strong>数组存储数据，是连续的内存空间</strong>，而<strong>LinkedList 链表的内存空间是非连续的</strong>，寻址方面 ArrayDeque 更快。\n\n执行速度方面：LinkedList 没有扩容的时间花费，但是每次插入元素都要进行 new 操作，执行类加载，对象创建的过程，new 操作的过程：\n\n<strong>推荐使用 ArrayDeuqe 代替 Stack 的原因</strong>\n\n- Stack 继承了 Vector,加锁的方法执行慢\n\n### HashMap 和 TreeMap 区别\n\nTreeMap 可以搜索集合内的元素，且可以对元素进行排序\n\n### HashSet 与 HashSet 的区别\n\n### comparable 和 Comparator 的区别\n\n两者都是用来比较 java 对象的接口，comparable 的实现类创建的实例对象可以使用类中定义的 compareTo 方法进行比较，Comparator 是比较器是一个泛型接口，可以用于比较两个对象。\n\n### 无序性与不可重复性\n\n无序性不是随机存放的意思，而是根据数据对应的哈希值决定。\n\n不可重复性是指 equals()方法与 hashCode()方法都成立\n\n### 红黑树理解\n\n### 常用容器整理（顺序： 数组 > 链表 > 树 > 哈希表  线程不安全 > 线程安全）\n\n#### ArrayList\n\n![boxcnGaWtUYNnxz9fI1BB6tAo4b.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/04502f1274df8f4f413fe73c049bc619.png)![](static/boxcnGaWtUYNnxz9fI1BB6tAo4b.png)\n\n<strong>ArrayList 的扩容机制</strong>\n\n- <strong>无参构造方法</strong>创建的是<strong>空数组</strong>，<strong>添加元素时才会赋值</strong>\n- 添加元素时判断当前容量是否需要扩容，每次扩容大概变为原来容量的 1.5 倍\n\n![boxcnIpgJz6XiJ5x3RzIQ0s60Ad.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/1f6fc5e27af79fdf698fc8115ff5ec0f.png)![](static/boxcnIpgJz6XiJ5x3RzIQ0s60Ad.png)\n\n- ArrayLis 提供了 `ensureCapacity` 小幅度提升大数据量的添加效率\n\n#### LinkedList\n\n#### Vector\n\nVector 内部所有方法都加了 synchronized，内部是线程安全的，但是多线程环境下组合操作 Vector 仍然需要进行同步处理。\n\n参考：[Vector 的线程安全问题_小小本科生 debug 的博客-CSDN 博客_vector 线程安全吗](https://blog.csdn.net/A12115419/article/details/121145752)\n\n#### PriorityQueue\n\n优先级队列，出队优先级最高的先出队。\n\n底层使用可变长数组来存储数据\n\n插入和删除元素的时间复杂度是 O(logn)\n\n存储的元素需要不为空，同时实现 comparable 接口。\n\n#### <strong>HashMap</strong>\n\nHashMap 只能有一个空键，但是可以有多个空值\n\n<strong>HashMap 的容量</strong>\n\n1.8 默认容量是 16，HashMap 的容量永远是 2 的次方，创建时容量会被转成 2 的幂次方，因为哈希表中的 hash 值的范围很大（32 位），内存装不下，需要对数组长度取模后才是对应存放的位置\n\n而取模运算可以优化为位运算，\n\n相比 HashTable 没有为方法加锁，加锁的是 ConcurrentHashMap，HashMap 允许空值，键只能有一个空值。\n\n1.8 以后，进行扩容操作后会从链表转红黑树。\n\n底层是数组链表，根据 hashcode 分配数组空间，链表解决 hash 碰撞的问题，当 hash 碰撞次数，也就是链表长度大于阈值（8）时将链表转换为红黑树，同时<strong>HashMap 可以对数组扩容以存放更多元素。</strong>\n\n<strong>HashMap 的遍历方式与性能分析</strong>\n\n<strong>结论</strong>：\n\n遍历时使用 entrySet 性能更好，同时使用 iterator 方法遍历是安全的\n\n使用 Lambda 或 Stream 可以先进行无用数据的过滤或者删除再进行遍历才能可以保证遍历安全。\n\n#### HashSet\n\nHashSet 实现了 Set 接口，线程不安全，存放唯一元素，\n\n<strong>HashSet 检查重复的方法：</strong>\n\n1. 主要通过比较 hashCode 是否相同，如果相同还会调用 equals()方法进行检查\n2. 1.8 添加时如果遇到重复的元素，并不是舍去而是执行替换操作。\n\n#### TreeSet\n\n<strong>简介：</strong>TreeSet 是一个<strong>有序集合</strong>，实现了 NavigableSet 接口，可以<strong>对元素进行排序</strong>，初始线程不安全，但是可以使用<strong>Collections.synhronizedSet()</strong>包装器在外部进行同步。\n\n#### CopyOnWriteArrayList\n\n<strong>位置：java.util.concurrent</strong>\n\n<strong>简介</strong>：一个线程安全的 ArrayList 并发容器，主要通过读写分离的并发策略来实现线程安全。其写操作如字面意思，会通过创建底层新副本来实现，读操作不用加锁。\n\n<strong>使用场景与优缺点：</strong>\n\nCopyOnWriteArrayList 适用于读多写少的情况，由于进行写入操作时会对原数组进行复制，导致额外的内存占用，由于写入后还需要将原引用指向复制出来的内存空间，所以读操作的实时性并不好。\n\n# 拷贝知识\n\n- 引用拷贝：创建的新 java 对象实际上并不会在堆中创建新对象\n- 浅拷贝：创建的新 java 对象会存到堆中，除类变量不变外，其他的成员变量如果是基础类型那么会给新值，拷贝类可以通过实现 Cloneable 接口后重写 clone()方法实现（直接调用 Object 的 clone()方法）\n- 深拷贝：堆中创建完全独立的对象，新对象中成员变量如果有引用类型的变量也会一同新创建‘\n\n参考： [数据结构篇](https://aql0chlim8.feishu.cn/wiki/wikcnGB4pO1SikXXPmuf3bThcyh#RY06dQOK4oeaSOxkVZScWaZonNd)\n\n# Java 异常\n\n## Exception 和 Error 的区别\n\n<strong>Exception 和 Error 是 Throwable 的子类</strong>在 java 中，所有的异常类都继承自 java.lang 包中的 Throwable 类，Java 中的异常按程序是否可处理分为两类：<strong>程序可处理的异常（Exception）</strong>和<strong>程序无法处理的异常（Error）</strong>异常都是可以捕获的（java 规范不建议捕获 Error），Error 异常发生时 JVM 会选择线程终止。\n\n使用异常的性能成本非常高，创建一个异常非常慢，抛出异常也会消耗毫秒级的时间。\n\n可处理的异常（Exception）又可按是否需要处理分为<strong>受检测异常</strong>和<strong>不受检测异常</strong>，受检测的异常如果我们没有在代码中进行处理是不能通过编译的。除<strong>RuntimeException</strong>系列的异常类外，其他的 Exception 都是受检测异常。\n\n![boxcn6CPJlKzBODLIV45ug6ADvv.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/98b002c674ccff63b017dd4fbe8cda5d.png)![](static/boxcn6CPJlKzBODLIV45ug6ADvv.png)\n\n### 常见的异常\n\n<strong>必检异常</strong>\n\nIOException IO 流相关的异常\n\nClassNotFoundException 类没找到的异常\n\nFileNotFoundException 文件未找到异常\n\n<strong>非必检异常</strong>\n\nArithmeticException 运算错误\n\nIndexOutOfBoundsException 越界\n\n<strong>无法处理的异常</strong>\n\nOutOfMemoryError(内存不够产生的错误）\n\nVirtualMahcineError(java 虚拟机运行错误)\n\nNoClassDefFoundError(类定义错误)\n\nStackOverFlowError(栈溢出错误)\n\ntry-catch-finally 的一些特性\n\n- finally 块中的语句都会被 jvm 执行，如果 catch 中遇到 return 语句，finally 语句将再返回前被执行。\n\ntry-catch-resource 的特性\n\n- 处理多个资源时按栈的顺序关闭，（先进后关）\n\n# Java IO\n\n## IO 模型参考\n\n[操作系统相关知识](https://aql0chlim8.feishu.cn/wiki/wikcnU7RyVKJqDSlBwn6gehiUfg#doxcn84EMCe040ksWu2KwJFvGGb)\n\n## 同步与异步的区别\n\n- 同步 ： 发出一个调用之后，在没有得到结果之前， 该调用就不可以返回，一直等待。\n- 异步 ：调用在发出之后，不用等待返回结果，该调用直接返回。\n\n## Java 的三种 IO 模型\n\n### BIO\n\n同步阻塞 IO 模型，性能差，程序会一直阻塞，直到拿到内核中的数据。\n\n### NIO\n\n多路复用模型，网上有些说法是 NIO 属于同步非阻塞模型，但是我之前学 python 爬虫的时候接触过同步非阻塞模型，缺点是程序会不断调用请求，耗费 cpu 资源。\n\nNIO 通过选择器接受客户端数据，只有数据到了后才为其服务，这样可以管理多个客户端数据。减少了系统调用，从而相比 BIO 减少了 CPU 资源的消耗\n\n### AIO\n\nAIO 是异步 IO 模型，基于事件和回调机制，应用程序发送 io 请求后不阻塞，直接返回，系统获取到数据后回调回去。\n\n## JavaIO 基础\n\n计算机中存储的数据以字节为单位来计算大小，所以 io 流都是基于字节来操作的，但是字符比较特殊，因为字符有不同的编码格式，直接使用字节流处理字符会出现乱码的情况，所以 java 单独设计了一个字符流用于处理字符。\n\n按过程来区分：输入流和输出流\n\n按数据处理方式来区分：字节流和字符流\n\n## 与 FileInputStream/FileOutputStream 配合使用的流\n\n流处理过程中，一般先将输入流转换为 FIS,之后再进行其他流的转换；要将 FIS/FOS 作为构造参数才能使用\n\n<strong>BufferedInputStream/BufferedOutputStream</strong>\n\n字节缓存流，常用于将所有字节转换为一个 String 对象；\n\n<strong>DataInputStream/DataOutputStream</strong>\n\n用于读取指定类型数据\n\n<strong>ObjectInputStream/ObjectOutputStream</strong>\n\n用于序列化和反序列化 java 对象\n\n## 字节缓冲流\n\n缓冲流使用数组来一次性操作多个字节提高流的传输效率\n\n## 字符流\n\n字符流默认采用 Unicode 编码，可以通过构造方法自定义编码，常用的字符编码：\n\n| 编码格式 | 字母所占字节 | 汉字所占字节 |\n| -------- | ------------ | ------------ |\n| unicode  | 2            | 2            |\n| utf8     | 1            | 3            |\n| gbk      | 1            | 2            |\n\n## 字符流与字节流的转换\n\n通过 FileReader 和 FileWriter 进行文本的读写，字符缓冲流使用 BufferedReader 和 BufferedWriter.\n\n## 控制台流\n\n格式化输入：Scanner\n\n常用的 System.out 是获取 PrintStream 对象对其进行流操作\n\n![boxcnPhi4Haq7DiRsWR3h5Lqcrc.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/56c5608c5640ad6bbbefafb09d147b8c.png)![](static/boxcnPhi4Haq7DiRsWR3h5Lqcrc.png)\n\nSystem.in 则是标准输入流（InputStream 对象）\n\n![boxcnzc7aZ149XOyhoPxEenJzte.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/cacf8f24f1d3037776699dcde5f3df8e.png)![](static/boxcnzc7aZ149XOyhoPxEenJzte.png)\n\n## 随机访问流\n\n跳转到文件任意位置进行读写操作的 RandomAccessFile,实现了随机访问接口 RandomAccess\n\n## Java IO 设计模式\n\n### 装饰器模式\n\n在已有对象的基础上进行功能性拓展，从一个核心对象衍生出多种具有不同特性的对象。\n\n例如标准输入输出流拓展出缓冲流，数据流，对象流；\n\n装饰器类需要跟原始类继承相同的抽象类或者实现相同的接口。\n\n<strong>使用原因</strong>\n\n简化对象继承关系，拓展对象功能不会产生复制的继承关系。\n\n### 适配器模式\n\n适配器的功能在于适配，使两种不同特性,接口不兼容的类或对象可以互相转换。\n\n适配器只需要提供转换的功能，因此不需要与适配者继承相同抽象类或实现相同接口。\n\n字节流和字符流之间的相互转换；\n\n### 工厂模式\n\n工厂模式用于批量创建对象，分为静态工厂和简单工厂，NIO 中大量使用到了工厂模式，比如以 new 和 get 开头的方法，一般都是按工厂模式创建对象；\n\n### 观察者模式\n\n观察者模式的特点是监听机制，可以监听对象事件，一般通过定期轮询的方式监听事件。\n\nNIO 中的文件监听服务(WatchService)，WatchService 可以监听对象的多种事件，比如文件的增删改', 1, '', 0, 0, 1, '2023-02-18 17:37:28', NULL);
INSERT INTO `tb_article` VALUES (60, 1, 188, 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/364b627a190b54514e40883fbbad2bb4.png', 'JAVA并发基础笔记', '# JAVA 并发多线程\n\n# 多线程基础知识\n\n## 多线程 java\n\n一个 java 程序 创建的进程中包含 main 线程和多个其他线程，所以 java 天生就是多线程程序。\n\nThread 类创建的实例对象就代表 java 中的一个线程。\n\n<strong>java 中创建线程的方式主要有三种</strong>：继承线程类，实现和运行调用（Runnable Callable）有关的接口，通过线程池创建线程。\n\n<strong>java 中停止一个正在运行的线程</strong>\n\n<strong>线程中常用的方法</strong>\n\nstart() getName() sleep() join() yield()\n\n<strong>线程与进程介绍：</strong>[操作系统相关知识](https://aql0chlim8.feishu.cn/wiki/wikcnU7RyVKJqDSlBwn6gehiUfg#doxcno8CkWgg6UQAcSu1PpbPVmg)<strong> </strong>\n\n- 一个进程中可划分为多个线程\n- 线程共享进程中的堆（内存区，用来为创建的对象分配内存）和方法区(类信息，静态变量，常量，编译后代码)\n- 线程拥有私有程序计数器（记录当前线程执行位置），虚拟机栈（处理字节码），本地方法栈（Native 方法）两个栈都存有线程的局部变量信息，所以是私有的。\n\n<strong>独立与共享有关的知识点</strong>\n\n进程之间是独立的，而线程容易相互影响，有线程安全的问题。\n\n<strong>线程有关知识:</strong>[操作系统相关知识](https://aql0chlim8.feishu.cn/wiki/wikcnU7RyVKJqDSlBwn6gehiUfg#doxcnqmK28csI6iuI2urg92HO67)<strong> </strong>\n\n# java 内存模型（JMM）\n\n首先 java 内存模型主要是为了简化多线程编程，增强程序可移植性。\n\n根据内存模型抽象出了两个概念：本地内存和主内存\n\n线程只能访问本地内存，当线程访问在主内存中的共享变量时实际上是访问直接本地内存当中的副本，\n\n<strong>并发编程的三个重要特性：</strong>\n\n原子性（synchronized，锁），可见性（synchronized,volatile,锁），有序性（指令重排引起，volatile 解决）\n\n# 并发编程\n\n并发（抢票）与并行（定时邮件）\n\n## 线程池\n\n优化性能，提高资源利用率通过 ThreadPoolExceutor 去获取线程池，线程池有三种类型：\n\n<strong>FixedThreadPool</strong> ： 该方法返回一个固定线程数量的线程池。\n\n<strong>SingleThreadExecutor：</strong> 方法返回一个只有一个线程的线程池。\n\n<strong>CachedThreadPool：</strong> 该方法返回一个可根据实际情况调整线程数量的线程池。\n\n<strong>线程池有三个重要参数</strong>\n\n<strong>corePoolSize</strong><strong> :</strong> 核心线程数指最小可同时运行的线程数。\n\n<strong>maximumPoolSize</strong><strong> :</strong> 任务队列满后，可同时运行的最大线程数。\n\n<strong>workQueue</strong><strong>:</strong> 任务队列\n\n## <strong>volatile 关键字的作用</strong>\n\nvolatile 用于保证变量的可见性，不能保证变量操作的原子性，标记变量为一个共享变量编译器使用变量时会从主存读取。\n\nvolatile 还用于防止 JVM 的指令重排序：双重锁实现对象单例：[JAVA 基础](https://aql0chlim8.feishu.cn/wiki/wikcniBkHFE5nv0K67qpI77T2Je#doxcn64wyW6KWEUagkPkErRaJpf)\n\n当 volatile 修饰了变量，可以防止在多线程环境下，获取到还没有初始化的实例对象\n\n<strong>对象创建的过程：</strong>\n\n- 为变量分配内存空间\n- 初始化变量\n- 将变量指向分配的内存地址\n\n## java 锁机制（synchronized 加锁）\n\n## synchronized 关键字\n\n翻译过来是同步的意思，使用方式有三种\n\n1. 修饰实例方法（加对象锁）\n2. 修饰静态方法（加类锁）\n3. 修饰代码块（可指定锁的类型，对象锁和类锁都可以加）\n\nsynchronized 不可以修饰构造方法，因为构造方法本身是线程安全的。修饰静态方法时加的是类锁\n\n### synchronized 底层原理\n\n通过 javap 查看字节码信息。\n\n<strong>synchronized 代码块实现原理</strong>\n\n![boxcnWT1HEEb2cReqUpEZBuiHdb.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/f70d75ff68943d395c80cc0127a2072a.png)![](static/boxcnWT1HEEb2cReqUpEZBuiHdb.png)\n\nmethod 方法中的同步块信息中使用到了 monitorenter 指令和 monitorexit 指令，\n\nmonitorenter 指令用于使线程获取对象监视器（ObjectMonitor），如果锁的计数器为 0，则可以获取，获取后计数器 +1，线程执行到 monitorexit 指令释放锁，将锁计数器设为 0。\n\n![boxcnH8TiQX3P7NdxqSEvgC95Yb.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/aede259a8b9ef6763e3478024e511b5f.png)![](static/boxcnH8TiQX3P7NdxqSEvgC95Yb.png)\n\n<strong>synchronized 方法实现原理</strong>\n\n![boxcnGKl8bK1E1Qb4JliJRLIksf.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/11388b0cffb8611b2f4420894d5bdfd0.png)![](static/boxcnGKl8bK1E1Qb4JliJRLIksf.png)\n\n![boxcnlRU2dCUbygedw7UcN4VS7c.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/00da92fb7da6d6a90730d43f3ba589cb.png)![](static/boxcnlRU2dCUbygedw7UcN4VS7c.png)\n\n用 synchronized 修饰的方法在转换为字节码后会加上一个标识，jvm 通过这个标识来为该方法执行同步调用。\n\n实例方法获取对象锁，静态方法获取类锁\n\n## 对象锁和类锁\n\n- 对象锁 - new 多个对象去操作，无法实现互斥\n- 类锁由于全局只有一个，有点像单例的，在一个 jvm 内能保证是互斥的\n\n## 原理·对象头\n\nJVM 中对象在内存中分为三个区域，对象头，实例数据，填充数据\n\nsynchronized 是基于对象作为锁的，锁信息都放在了对象头的 MarkWord 中\n\n一个线程想要竞争当前的锁资源首先是看 MarkWord 中的锁标记位（锁的计数器），根据标记位判断锁的类型，以不同方式竞争。\n\n## jdk1.6 后对于锁的优化与拓展\n\n### 锁的四种状态与状态升级\n\n锁只能升级不可降级，这是为了提高锁的使用效率\n\n锁的四种状态：无锁状态、偏向锁状态、轻量级锁状态、重量级锁状态\n\n在初始化状态的对象的锁信息有两种情况：\n\n- 无锁状态： 当前状态没有开启偏向锁，对象头中的 MarkWord 存储的是一般的 hashcode 等信息\n- 匿名偏向： 开启偏向锁后 MarkWord 存储的就是偏向锁相关的信息，只是没有指向任何的线程\n\n<strong>偏向锁</strong>只有一个线程来拿锁资源，没有竞争，当再来一个线程后触发竞争，<strong>锁升级</strong>为<strong>轻量级锁</strong>\n\n- 轻量级锁以 CAS 的方式去竞争锁资源，不会让<strong>线程挂起</strong>\n- 线程频繁挂起以及被唤醒的话，需要在用户态和内核态之间相互转换，为了避免线程挂起，所以我们要运用到轻量级锁\n\n### 锁消除\n\n### 锁膨胀', 1, '', 0, 0, 1, '2023-02-18 17:40:15', NULL);
INSERT INTO `tb_article` VALUES (61, 1, 189, 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/ed286161507ced27f972308188ece232.png', 'Redis知识整理', '# Redis 笔记\n\n# Redis 的性能优化\n\n- Redis 基于内存存储数据\n- Redis 内置了多种优化的数据结构实现，进一步提高了性能\n\n# Redis 的数据结构\n\n总共 8 种，五种基本结构，三种特殊结构\n\n<strong>基本结构</strong>\n\n字符串（String），链表(List)，集合(Set)，散列(Hash)，有序集合(Zset)\n\n<strong>特殊结构</strong>\n\n基数统计（HyperLogLogs），位存储（Bitmap），地理位置(Geospatial)\n\n# Redis 单线程模型\n\n单线程模型是说 Redis 中的文件事件处理器，因为文件事件处理器是以单线程模式运行的。\n\n<strong>Redis 设计与实现中对于单线程模型的定义</strong>\n\n文件处理器以单线程方式运行，但通过 I/O 多路复用程序来监听多个套接字。\n\nRedis 基于 Reactor 模式开发了自己的网络事件处理器：这个处理器被称为文件事件处理器（file event handler）。\n\n- 文件事件处理器使用 I/O 多路复用（multiplexing）程序来同时监听多个套接字，并根据套接字目前执行的任务来为套接字关联不同的事件处理器。\n- 当被监听的套接字准备好执行连接应答（accept）、读取（read）、写入（write）、关 闭（close）等操作时，与操作相对应的文件事件就会产生，这时文件事件处理器就会调用套接字之前关联好的事件处理器来处理这些事件。\n\n<strong>虽然文件事件处理器以单线程方式运行，但通过使用 I/O 多路复用程序来监听多个套接字</strong>，文件事件处理器既实现了高性能的网络通信模型，又可以很好地与 Redis 服务器中其他同样以单线程方式运行的模块进行对接，这保持了 Redis 内部单线程设计的简单性。\n\n## <strong>Redis 文件事件处理器的构成</strong>\n\n文件事件处理器（file event handler）主要是包含 4 个部分：\n\n- 多个 socket（客户端连接）\n- IO 多路复用程序（支持多个客户端连接的关键）\n- 文件事件分派器（将 socket 关联到相应的事件处理器）\n- 事件处理器（连接应答处理器、命令请求处理器、命令回复处理器）\n\n## Redis6.0 引入多线程的原因\n\n提高网络 IO 读写性能\n\n引入的多线程主要是在网络数据读写时使用，执行命令仍然靠单线程顺序执行，不用担心线程安全问题。\n\n默认是关闭的，需要在配置文件中设置才能使用。\n\n# Redis 内存管理(数据过期删除机制与内存淘汰机制)\n![image.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/d7fc3c8db673d219b3053e6eb3b287fc.png)\n<strong>参考：https://blog.csdn.net/D812359/article/details/121872689</strong>\n\n由于 Redis 将数据存在内存中，为了减少内存溢出的风险，数据可以设置过期时间。\n\n## Redis 判断数据过期的原理\n\nRedis 中有专门的一个过期字典，数据结构是 hash 表来保存数据的过期时间，值是 longlong 类型的整数。\n\n当数据过期后，Redis 通过两个删除策略来删除数据。\n\n<strong>惰性删除</strong> ：只会在取出 key 的时候才对数据进行过期检查。这样对 CPU 最友好，但是可能会造成太多过期 key 没有被删除。\n\n客户端访问 key 值时，Redis 会检查这个 key 值的过期时间，如果过期就立即删除，不返回数据。\n\n<strong>定期删除</strong> ： 每隔一段时间抽取一批 key 执行删除过期 key 操作。并且，Redis 底层会通过限制删除操作执行的时长和频率来减少删除操作对 CPU 时间的影响。\n\n定期删除根据贪心策略来删除，策略是每次从过期字典随机扫描 20 个 key 值，删除过期的数据，如果过期比例大于 25% 的话还会再抽 20 条数据来扫描。\n\n## Redis 内存淘汰机制\n\n目前最新的 Redis 有 8 种淘汰机制，在内存不足时启用；\n\n默认淘汰机制就是内存满后再有写请求时返回错误；\n\n以 volatile 开头的策略是当内存使用量达到阈值时，只会淘汰设置了过期时间的键值对\n\n以 allkeys 开头的策略则会对所有键值对进行淘汰判定。\n\n具体的淘汰策略有随机，ttl,和 LRU,LFU 算法。\n\n<strong>LRU（页面置换算法，最近最少原则）算法，筛选出最不常用和保留时间最久的数据进行淘汰。</strong>\n\nLRU 只看数据的访问时间来进行淘汰，所以扫描式单次查询会出现<strong>缓存污染</strong>的问题。\n\n<strong>LFU</strong>在 LRU 的基础上统计每个数据的访问次数，先按访问次数进行淘汰，再按保留时间淘汰\n\n# Redis 实现分布式锁', 1, '', 0, 0, 1, '2023-02-18 17:44:37', NULL);

-- ----------------------------
-- Table structure for tb_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `tb_article_tag`;
CREATE TABLE `tb_article_tag`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `article_id` int(0) NOT NULL COMMENT '文章id',
  `tag_id` int(0) NOT NULL COMMENT '标签id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_article_tag_1`(`article_id`) USING BTREE,
  INDEX `fk_article_tag_2`(`tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 858 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_article_tag
-- ----------------------------
INSERT INTO `tb_article_tag` VALUES (857, 54, 29);
INSERT INTO `tb_article_tag` VALUES (858, 55, 30);
INSERT INTO `tb_article_tag` VALUES (859, 55, 31);
INSERT INTO `tb_article_tag` VALUES (860, 55, 32);
INSERT INTO `tb_article_tag` VALUES (861, 56, 33);
INSERT INTO `tb_article_tag` VALUES (862, 56, 34);
INSERT INTO `tb_article_tag` VALUES (863, 56, 35);
INSERT INTO `tb_article_tag` VALUES (864, 57, 32);
INSERT INTO `tb_article_tag` VALUES (865, 57, 36);
INSERT INTO `tb_article_tag` VALUES (866, 57, 37);
INSERT INTO `tb_article_tag` VALUES (870, 58, 32);
INSERT INTO `tb_article_tag` VALUES (871, 58, 36);
INSERT INTO `tb_article_tag` VALUES (872, 58, 37);
INSERT INTO `tb_article_tag` VALUES (873, 59, 32);
INSERT INTO `tb_article_tag` VALUES (874, 59, 38);
INSERT INTO `tb_article_tag` VALUES (875, 60, 32);
INSERT INTO `tb_article_tag` VALUES (876, 60, 38);
INSERT INTO `tb_article_tag` VALUES (877, 60, 39);
INSERT INTO `tb_article_tag` VALUES (878, 61, 32);
INSERT INTO `tb_article_tag` VALUES (879, 61, 40);

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类名',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 188 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES (187, '测试分类', '2022-01-24 23:33:56', NULL);
INSERT INTO `tb_category` VALUES (188, '后端文章', '2023-02-18 17:11:03', NULL);
INSERT INTO `tb_category` VALUES (189, '数据库文章', '2023-02-18 17:22:54', NULL);

-- ----------------------------
-- Table structure for tb_chat_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_chat_record`;
CREATE TABLE `tb_chat_record`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '头像',
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '聊天内容',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'ip地址',
  `ip_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'ip来源',
  `type` tinyint(0) NOT NULL COMMENT '类型',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2991 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_chat_record
-- ----------------------------
INSERT INTO `tb_chat_record` VALUES (2990, NULL, '未知ip', 'https://static.talkxj.com/photos/0bca52afdb2b9998132355d716390c9f.png', '666', '未知ip', '', 3, '2023-02-07 15:47:47', NULL);

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(0) NOT NULL COMMENT '评论用户Id',
  `topic_id` int(0) NULL DEFAULT NULL COMMENT '评论主题id',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论内容',
  `reply_user_id` int(0) NULL DEFAULT NULL COMMENT '回复用户id',
  `parent_id` int(0) NULL DEFAULT NULL COMMENT '父评论id',
  `type` tinyint(0) NOT NULL COMMENT '评论类型 1.文章 2.友链 3.说说',
  `is_delete` tinyint(0) NOT NULL DEFAULT 0 COMMENT '是否删除  0否 1是',
  `is_review` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否审核',
  `create_time` datetime(0) NOT NULL COMMENT '评论时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_comment_user`(`user_id`) USING BTREE,
  INDEX `fk_comment_parent`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 731 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES (725, 1, 54, '测试评论', NULL, NULL, 1, 0, 1, '2022-03-11 22:52:24', NULL);
INSERT INTO `tb_comment` VALUES (726, 1, 54, '测试回复', 1, 725, 1, 0, 1, '2022-03-11 22:52:32', NULL);
INSERT INTO `tb_comment` VALUES (727, 1, 49, '测试评论', NULL, NULL, 3, 0, 1, '2022-03-11 22:52:41', NULL);
INSERT INTO `tb_comment` VALUES (728, 1, 49, '测试回复', 1, 727, 3, 0, 1, '2022-03-11 22:52:46', NULL);
INSERT INTO `tb_comment` VALUES (729, 1, NULL, '测试评论', NULL, NULL, 2, 0, 1, '2022-03-11 22:52:53', NULL);
INSERT INTO `tb_comment` VALUES (730, 1, NULL, '测试回复', 1, 729, 2, 0, 1, '2022-03-11 22:52:58', NULL);

-- ----------------------------
-- Table structure for tb_friend_link
-- ----------------------------
DROP TABLE IF EXISTS `tb_friend_link`;
CREATE TABLE `tb_friend_link`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '链接名',
  `link_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '链接头像',
  `link_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '链接地址',
  `link_intro` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '链接介绍',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_friend_link_user`(`link_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_friend_link
-- ----------------------------

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名',
  `path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单路径',
  `component` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '组件',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单icon',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `order_num` tinyint(1) NOT NULL COMMENT '排序',
  `parent_id` int(0) NULL DEFAULT NULL COMMENT '父id',
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否隐藏  0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 219 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES (1, '首页', '/', '/home/Home.vue', 'el-icon-myshouye', '2022-01-26 17:06:51', '2022-01-26 17:06:53', 1, NULL, 0);
INSERT INTO `tb_menu` VALUES (2, '文章管理', '/article-submenu', 'Layout', 'el-icon-mywenzhang-copy', '2022-01-25 20:43:07', '2022-01-25 20:43:09', 2, NULL, 0);
INSERT INTO `tb_menu` VALUES (3, '消息管理', '/message-submenu', 'Layout', 'el-icon-myxiaoxi', '2022-01-25 20:44:17', '2022-01-25 20:44:20', 3, NULL, 0);
INSERT INTO `tb_menu` VALUES (4, '系统管理', '/system-submenu', 'Layout', 'el-icon-myshezhi', '2022-01-25 20:45:57', '2022-01-25 20:45:59', 5, NULL, 0);
INSERT INTO `tb_menu` VALUES (5, '个人中心', '/setting', '/setting/Setting.vue', 'el-icon-myuser', '2022-01-26 17:22:38', '2022-01-26 17:22:41', 7, NULL, 0);
INSERT INTO `tb_menu` VALUES (6, '发布文章', '/articles', '/article/Article.vue', 'el-icon-myfabiaowenzhang', '2022-01-26 14:30:48', '2022-01-26 14:30:51', 1, 2, 0);
INSERT INTO `tb_menu` VALUES (7, '修改文章', '/articles/*', '/article/Article.vue', 'el-icon-myfabiaowenzhang', '2022-01-26 14:31:32', '2022-01-26 14:31:34', 2, 2, 1);
INSERT INTO `tb_menu` VALUES (8, '文章列表', '/article-list', '/article/ArticleList.vue', 'el-icon-mywenzhangliebiao', '2022-01-26 14:32:13', '2022-01-26 14:32:16', 3, 2, 0);
INSERT INTO `tb_menu` VALUES (9, '分类管理', '/categories', '/category/Category.vue', 'el-icon-myfenlei', '2022-01-26 14:33:42', '2022-01-26 14:33:43', 4, 2, 0);
INSERT INTO `tb_menu` VALUES (10, '标签管理', '/tags', '/tag/Tag.vue', 'el-icon-myicontag', '2022-01-26 14:34:33', '2022-01-26 14:34:36', 5, 2, 0);
INSERT INTO `tb_menu` VALUES (11, '评论管理', '/comments', '/comment/Comment.vue', 'el-icon-mypinglunzu', '2022-01-26 14:35:31', '2022-01-26 14:35:34', 1, 3, 0);
INSERT INTO `tb_menu` VALUES (12, '留言管理', '/messages', '/message/Message.vue', 'el-icon-myliuyan', '2022-01-26 14:36:09', '2022-01-26 14:36:13', 2, 3, 0);
INSERT INTO `tb_menu` VALUES (13, '用户列表', '/users', '/user/User.vue', 'el-icon-myyonghuliebiao', '2022-01-26 14:38:09', '2022-01-26 14:38:12', 1, 202, 0);
INSERT INTO `tb_menu` VALUES (14, '角色管理', '/roles', '/role/Role.vue', 'el-icon-myjiaoseliebiao', '2022-01-26 14:39:01', '2022-01-26 14:39:03', 2, 213, 0);
INSERT INTO `tb_menu` VALUES (15, '接口管理', '/resources', '/resource/Resource.vue', 'el-icon-myjiekouguanli', '2022-01-26 14:40:14', '2022-08-07 20:00:28', 2, 213, 0);
INSERT INTO `tb_menu` VALUES (16, '菜单管理', '/menus', '/menu/Menu.vue', 'el-icon-mycaidan', '2022-01-26 14:40:54', '2022-08-07 10:18:49', 2, 213, 0);
INSERT INTO `tb_menu` VALUES (17, '友链管理', '/links', '/friendLink/FriendLink.vue', 'el-icon-mydashujukeshihuaico-', '2022-01-26 14:41:35', '2022-01-26 14:41:37', 3, 4, 0);
INSERT INTO `tb_menu` VALUES (18, '关于我', '/about', '/about/About.vue', 'el-icon-myguanyuwo', '2022-01-26 14:42:05', '2022-01-26 14:42:10', 4, 4, 0);
INSERT INTO `tb_menu` VALUES (19, '日志管理', '/log-submenu', 'Layout', 'el-icon-myguanyuwo', '2022-01-31 21:33:56', '2022-01-31 21:33:59', 6, NULL, 0);
INSERT INTO `tb_menu` VALUES (20, '操作日志', '/operation/log', '/log/Operation.vue', 'el-icon-myguanyuwo', '2022-01-31 15:53:21', '2022-01-31 15:53:25', 1, 19, 0);
INSERT INTO `tb_menu` VALUES (201, '在线用户', '/online/users', '/user/Online.vue', 'el-icon-myyonghuliebiao', '2022-02-05 14:59:51', '2022-02-05 14:59:53', 7, 202, 0);
INSERT INTO `tb_menu` VALUES (202, '用户管理', '/users-submenu', 'Layout', 'el-icon-myyonghuliebiao', '2022-02-06 23:44:59', '2022-02-06 23:45:03', 4, NULL, 0);
INSERT INTO `tb_menu` VALUES (205, '相册管理', '/album-submenu', 'Layout', 'el-icon-myimage-fill', '2022-08-03 15:10:54', '2022-08-07 20:02:06', 5, NULL, 0);
INSERT INTO `tb_menu` VALUES (206, '相册列表', '/albums', '/album/Album.vue', 'el-icon-myzhaopian', '2022-08-03 20:29:19', '2022-08-04 11:45:47', 1, 205, 0);
INSERT INTO `tb_menu` VALUES (208, '照片管理', '/albums/:albumId', '/album/Photo.vue', 'el-icon-myzhaopian', '2022-08-03 21:37:47', '2022-08-05 10:24:08', 1, 205, 1);
INSERT INTO `tb_menu` VALUES (209, '页面管理', '/pages', '/page/Page.vue', 'el-icon-myyemianpeizhi', '2022-08-04 11:36:27', '2022-08-07 20:01:26', 2, 4, 0);
INSERT INTO `tb_menu` VALUES (210, '照片回收站', '/photos/delete', '/album/Delete.vue', 'el-icon-myhuishouzhan', '2022-08-05 13:55:19', NULL, 3, 205, 1);
INSERT INTO `tb_menu` VALUES (213, '权限管理', '/permission-submenu', 'Layout', 'el-icon-mydaohanglantubiao_quanxianguanli', '2022-08-07 19:56:55', '2022-08-07 19:59:40', 4, NULL, 0);
INSERT INTO `tb_menu` VALUES (214, '网站管理', '/website', '/website/Website.vue', 'el-icon-myxitong', '2022-08-07 20:06:41', NULL, 1, 4, 0);
INSERT INTO `tb_menu` VALUES (215, '说说管理', '/talk-submenu', 'Layout', 'el-icon-mypinglun', '2022-01-23 20:17:59', '2022-01-23 20:38:06', 5, NULL, 0);
INSERT INTO `tb_menu` VALUES (216, '发布说说', '/talks', '/talk/Talk.vue', 'el-icon-myfabusekuai', '2022-01-23 20:18:43', '2022-01-23 20:38:19', 1, 215, 0);
INSERT INTO `tb_menu` VALUES (217, '说说列表', '/talk-list', '/talk/TalkList.vue', 'el-icon-myiconfontdongtaidianji', '2022-01-23 23:28:24', '2022-01-24 00:02:48', 2, 215, 0);
INSERT INTO `tb_menu` VALUES (218, '修改说说', '/talks/:talkId', '/talk/Talk.vue', 'el-icon-myshouye', '2022-01-24 00:10:44', NULL, 3, 215, 1);

-- ----------------------------
-- Table structure for tb_message
-- ----------------------------
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE `tb_message`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '头像',
  `message_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '留言内容',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户ip',
  `ip_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户地址',
  `time` tinyint(1) NULL DEFAULT NULL COMMENT '弹幕速度',
  `is_review` tinyint(0) NOT NULL DEFAULT 1 COMMENT '是否审核',
  `create_time` datetime(0) NOT NULL COMMENT '发布时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3939 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_message
-- ----------------------------
INSERT INTO `tb_message` VALUES (3938, '管理员', 'https://static.talkxj.com/avatar/user.png', '测试留言', '127.0.0.1', '', 9, 1, '2022-01-24 23:34:41', NULL);

-- ----------------------------
-- Table structure for tb_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_operation_log`;
CREATE TABLE `tb_operation_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `opt_module` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作模块',
  `opt_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作类型',
  `opt_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作url',
  `opt_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作方法',
  `opt_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作描述',
  `request_param` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求参数',
  `request_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求方式',
  `response_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '返回数据',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作ip',
  `ip_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作地址',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1085 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_operation_log
-- ----------------------------
INSERT INTO `tb_operation_log` VALUES (1083, '文章模块', '新增或修改', '/admin/articles', 'ArticleController.saveOrUpdateArticle', '添加或修改文章', '[{\"articleContent\":\"恭喜你成功运行博客，开启你的文章之旅吧。\",\"articleCover\":\"https://static.talkxj.com/articles/3dffb2fcbd541886616ab54c92570de3.jpg\",\"articleTitle\":\"测试文章\",\"categoryName\":\"测试分类\",\"isTop\":0,\"originalUrl\":\"\",\"status\":1,\"tagNameList\":[\"测试标签\"],\"type\":1}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2022-01-24 23:33:57', NULL);
INSERT INTO `tb_operation_log` VALUES (1084, '用户信息模块', '修改', '/admin/users/role', 'UserInfoController.updateUserRole', '修改用户角色', '[{\"nickname\":\"用户1623144727300739073\",\"roleIdList\":[2],\"userInfoId\":1005}]', 'PUT', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-08 12:01:36', NULL);
INSERT INTO `tb_operation_log` VALUES (1085, '文章模块', '新增或修改', '/admin/articles', 'com.wy.blog.controller.ArticleController.saveOrUpdateArticle', '添加或修改文章', '[{\"articleContent\":\"# TypeHandler\\n\\n# TypeHandler 是什么？\\n\\n<strong>TypeHandler 是 Mybatis 中 Java 对象和数据库 JDBC 之间进行类型转换的桥梁</strong>\\n\\nMybatis 使用 TypeHandler 这个类来处理<strong>java 基本数据</strong>类型与<strong>数据库中存储的数据类型</strong>之间的转换，可以<strong>自定义 TypeHandler</strong>来处理特殊类型的转换，比如特殊字符串分割后存放到 java 数组里面，我们可以获取到后进行字符串拼接和拆分，但是当这种特殊情况有多个时，比如工单图片 url 按逗号隔开，同时工单联系人也是有多个并且按逗号隔开，如果先获取字符串，再写字符串分割，那么就要写两次，但是定义了 TypeHandler 后，只要识别出按逗号隔开就自动进行转换，分割逗号的代码只用写一次就可以多次使用，这就是处理数据的一个好方法。\\n\\nTypeHandler 接口：\\n\\n![boxcnYvBWM0UMrf2hVuV2eZmJyd.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/321b6a46b16736c696fb86a2585bc936.png)![](static/boxcnYvBWM0UMrf2hVuV2eZmJyd.png)\\n\\n<strong>自定义字段多项逗号隔开转数组格式:</strong>\\n\\n自定义 <strong>typehandler </strong>需要注解上 java 接收时的类型和数据库中对应需要转换的类型，也可以去配置文件中定义，配置文件中定义的话全局生效，类名上定义的话，只有在 resultMap 中指定才能使用；\\n\\n![boxcnAg4r6iZpGlXhxQ7uekow3b.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/aaa84142540c3d78e3d55c85ffe81a8f.png)![](static/boxcnAg4r6iZpGlXhxQ7uekow3b.png)\\n\\n![boxcnBmgH5Bzr79ZABIgj2ttjQe.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/2a218e60820fe045308038dfcde1b8b8.png)![](static/boxcnBmgH5Bzr79ZABIgj2ttjQe.png)\",\"articleCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/e171f8df5cfd598ac10689a6584ae6fe.png\",\"articleTitle\":\"Mybatis - TypeHandler\",\"categoryName\":\"后端文章\",\"isTop\":0,\"originalUrl\":\"\",\"status\":1,\"tagNameList\":[\"Mybatis\",\"ORM框架\",\"知识速查\"],\"type\":1}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 17:11:03', NULL);
INSERT INTO `tb_operation_log` VALUES (1086, '文章模块', '新增或修改', '/admin/articles', 'com.wy.blog.controller.ArticleController.saveOrUpdateArticle', '添加或修改文章', '[{\"articleContent\":\"# 实习随记\\n\\n# 解决 idea 拉取代码后，莫名出现识别不了包名类名，同级类无法导入的问题\\n\\n其实这个问题经常出现在同事频繁删除添加代码后提交然后自己没有及时拉取代码；也有可能是 idea 的问题，公司也不可以几个项目组全员人手一个正版 idea🙄，d 版隔三岔五就会出点问题；\\n\\n因为启用版本管理后，代码文件会经常变动，原本新提交的类因为操作不当会导致 idea 的缓存里没有这一项；\\n\\n解决办法目前我用的是清理 idea 的缓存：\\n\\n![boxcnNDoWxmtTbjAAHKzMEyZEH8.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/0aeb1da61d6727fe0a06c674bbdeacf8.png)![](static/boxcnNDoWxmtTbjAAHKzMEyZEH8.png)\\n\\n![boxcneADLjLeHkppZFcDsiDTAPd.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/11ccf6370e64905306dbdf03dfd3c7ed.png)![](static/boxcneADLjLeHkppZFcDsiDTAPd.png)\\n\\n# <strong>解决手动导入 jar 包后导致项目使用 maven install 部署不成功</strong>\\n\\n情形描述：\\n\\n同事开发的过程中引入了第三方的 jar 包，这样的 jar 包虽然可以被 idea 识别，项目中可以直接导入，但是当使用 maven 打包部署时由于 jar 包是手动导入的，无法被 maven 识别，\\n\\n在执行 mvn clean install 命令时会报错：\\n\\n找不到 xxxx 程序包，\\n\\n解决方法：\\n\\n原因是因为 maven 并没有再本地仓库中检查到这个 jar 包，而且去官方因为没有 groupid，artificial 等信息更不可能拉到详细的依赖；\\n\\n解决思路就是通过 maven istall 名令添加额外参数将 jar 包放置本地的仓库里，项目 pom 文件添加上依赖，这样 maven 就能按流程将项目打包了；\\n\\n- 首先需要将导入的 jar 包导入到项目的 Libraies 中；\\n\\n![boxcnOpaiHwYX1obopAeTyVRpFe.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/1b9ca4b3632884d995d318fa13abf869.png)![](static/boxcnOpaiHwYX1obopAeTyVRpFe.png)\\n\\n- 导入后使用 maven goal 配置好参数后导入到项目中；\\n\\n![boxcnBfbJEGeLbHKo9mBVJOiOff.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/00890c05ad2ff4098c6e39f4e73c337a.png)![](static/boxcnBfbJEGeLbHKo9mBVJOiOff.png)\\n\\n参数自定义，不要和本地的依赖重名；jar 包路径可以从 Libraies 上复制；\\n\\n![boxcnIPogPRvOh5P5XICJb6URqd.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/9c86f063440fd5594c3bac36c87946b3.png)![](static/boxcnIPogPRvOh5P5XICJb6URqd.png)\\n\\n推荐使用记事本编辑好后复制到 maven goal（这里指的是 idea 执行 maven 命令的插件）上。\\n\\n![boxcnKuQXvkZgoa9FGmU3Qim2uL.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/a83ab3a567e927ede5ceaf8372965a40.png)![](static/boxcnKuQXvkZgoa9FGmU3Qim2uL.png)\\n\\n![boxcnDI33yt38Fqd6GeTtdPKUPM.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/fffe8d3a87dda423bb3494b468e841f8.png)![](static/boxcnDI33yt38Fqd6GeTtdPKUPM.png)\\n\\n执行命令后项目能够安装成功，但是之后如果想快捷的只用 maven install 的话需要在项目 pom 中添加 maven 依赖\\n\\n参数和依赖对比：\\n\\n![boxcnNbhYAV2aVtVypQy4J5RQtf.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/895f3710b9038ac1f09ea153fe884694.png)![](static/boxcnNbhYAV2aVtVypQy4J5RQtf.png)\\n\\n添加依赖后每次直接执行 maven install 就可以了\\n\\n# 解决 IDEA 控制台调试 SpringBoot 时报错：Command line is too long. Shorten command line for SpringBootMainApplication or also for App\\n\\n遇到这个问题的原因是 debug 时 mybatis 会返回大量的调试信息，这样会导致命令行太长，Idea 根据命令行内容传递给 JVM，命令行太长会导致数据丢失，从而使整个 SpringBoot 应用无法成功启动。\\n\\n这个可以通过修改 mybatis 的设置，将长的类路径（classpath）写入文件加载；\\n\\n在项目目录的.idea/workspace.xml 中进行相应的配置：\\n\\n在<strong>PropertiesComponent</strong>标签下加上这个属性：\\n\\n```\\n<property name=\\\"dynamic.classpath\\\" value=\\\"true\\\" />\\n```\\n\\n配置的主要功能就是<strong>开启 IDEA 的动态类路径</strong>，将太长的<u>类路径写入文件</u>，然后由应用程序启动器读取并通过系统<strong>类加载器加载</strong>。\",\"articleCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/a5cbecf61b3f9885ba4c80e549cbf3b6.png\",\"articleTitle\":\"Maven实习随记\",\"categoryName\":\"后端文章\",\"isTop\":0,\"originalUrl\":\"\",\"status\":1,\"tagNameList\":[\"Maven\",\"实习随记\",\"问题汇总\"],\"type\":1}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 17:17:28', NULL);
INSERT INTO `tb_operation_log` VALUES (1087, '文章模块', '新增或修改', '/admin/articles', 'com.wy.blog.controller.ArticleController.saveOrUpdateArticle', '添加或修改文章', '[{\"articleContent\":\"# SQL 学习笔记\\n\\n## 表连接的七种用法\\n\\n![boxcntUf5Pe6f7cdwRyfpQVbGLb.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/8bc72b05a4812c6da5819b39c4c1b2e9.png)![](static/boxcntUf5Pe6f7cdwRyfpQVbGLb.png)\\n\\n内连接（Inner Join）结果最小，筛选的范围最大，需要两表的连接键都满足条件。\\n\\n除内连接外还有三种不同的连接方式（左/右连接，外连接），但是另外这三种都属于内连接，内连接与他们的区别是内连接将结果集中不满足两表交集的部分删除了\\n\\n左连接与右连接的区别：\\n\\n两种连接方式都是侧重连接两张表中其中一张表，\\n\\n<strong>左连接(left Join)</strong>是保留左表，右表与左表 key 不同的地方补 null，\\n\\n<strong>右连接(right Join)</strong>是保留右表，左表与右表 key 不同的地方补 null；\\n\\n主要的连接按连接方式区分为两种，内连接和外连接(左/右连接，外连接)\\n\\n外连接中的三种连接按条件的不同又可以各种细分出两种，所以 SQL 表连接总共有七种连接方式（1 +  2 + 2 + 2）；\\n\\n表连接并非只用于两种不同的表，我们可以运用表连接对单张表进行筛选\\n\\n分组操作\\n\\n对表进行分组后方便统计和操作，比如去重，或者统计出重复的个数,而对于结果集条件的筛选是使用 order by 或者 having + 聚合函数的方式；\\n\\n# 多表查询的知识\\n\\n## 交叉连接（笛卡尔积）\\n\\nMySQL 中除了内外连接的方法进行多表查询，还可以使用交叉连接，<strong>交叉连接（CROSS JOIN）</strong>用来返回连接表的笛卡尔积，交叉连接在多表查询中不建议经常使用，因为产生的结果集会非常的巨大；\\n\\n交叉连接可以用于单表条件查询，查询条件涉及到单表中的相邻数据时使用\\n\\n# 字符串，数据格式有关的处理\\n\\n### 有关日期的处理\\n\\n<strong>SQL server 日期差使用 DATEDIFF()函数</strong>\\n\\n![boxcnA9WjWARZBM4N5D7lcD3sLc.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/8fba8a351e99f74d42819763df6fcce0.png)![](static/boxcnA9WjWARZBM4N5D7lcD3sLc.png)\\n\\nMySQL 使用 DATADIFF(enddate,startdate)\\n\\n![boxcn5Zp1a0E44iS6OqpO6EW20u.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/4330133bfe8463a0a914649eeb912511.png)![](static/boxcn5Zp1a0E44iS6OqpO6EW20u.png)\\n\\n# 有关行列转换的操作\\n\\n## UNION 操作符实现列转行（多列转一行）\\n\\n![boxcngO6Fy2XOQ428MyAyQ4hGXg.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/8ecbc9b2a4cfddd45bda51864b820384.png)![](static/boxcngO6Fy2XOQ428MyAyQ4hGXg.png)\\n\\n![boxcnPMyohbkkWsCwD2GDRPLqxc.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/74ebe82a9f769c26c93bf4ff026c5df4.png)![](static/boxcnPMyohbkkWsCwD2GDRPLqxc.png)\\n\\n## PIVOT,UNPIVOT 操作\\n\\nPIVOT 可以将一列的数值（多行的值）转换为具有相同标识的多列，为了达到数据的正确性，会取一列里分组后唯一的标识，因此 pivot 函数里需要指定聚合函数；\\n\\n除此之外还要指定转换后变成列标题的列字段和所有要显示出来的列值，FOR [预设标题列字段]  IN ( [预设标题列字段元素 A] , [预设标题列字段元素 B] ...   )\\n\\n### 语法：\\n\\n![boxcn7I8bauS7gknLc5d7Fenpop.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/be3a5597f1f09f4c1f84d9c7732f6285.png)![](static/boxcn7I8bauS7gknLc5d7Fenpop.png)\\n\\n### UNPIVOT 语法\\n\\n![boxcn8kqlkGf6w2fIlDGEud4f0X.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/2cd23a30f2be7dc4eeee7382699fb4ba.png)![](static/boxcn8kqlkGf6w2fIlDGEud4f0X.png)\",\"articleCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/2a9aeb008a4b54c3c2d7c61f1a4821e3.png\",\"articleTitle\":\"SQL学习笔记\",\"categoryName\":\"数据库文章\",\"isTop\":0,\"originalUrl\":\"\",\"status\":1,\"tagNameList\":[\"SQL语言\",\"MySQL\"],\"type\":1}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 17:22:54', NULL);
INSERT INTO `tb_operation_log` VALUES (1088, '文章模块', '新增或修改', '/admin/articles', 'com.wy.blog.controller.ArticleController.saveOrUpdateArticle', '添加或修改文章', '[{\"articleContent\":\"# 数据库高级\\n\\n# 数据库的三级模式结构\\n\\n- 模式是数据库中是全体数据的逻辑结构和特征的描述，是所有用户的公共数据视图，一个数据库只有一个模式\\n- 外模式是模式的子集，是数据库用户能够看见和使用的局部数据的逻辑结构和特征的描述\\n- 内模式是一个数据库的物理结构和存储方式的描述，是数据在数据库内部的表示方式。\\n\\n# 事务\\n\\n事务有四大特性\\n\\n<strong>原子性(全部成功或么失败)，一致性（数据库完整性约束，转账操作），隔离性（事务间互相隔离），持久性</strong>\\n\\n# 事务隔离级别总结\\n\\nSQL 定义了四个标准隔离级别\\n\\n<strong>READ-UNCOMMITTED(读取未提交)</strong> ： 最低的隔离级别，允许读取尚未提交的数据变更，可能会导致脏读、幻读或不可重复读。\\n\\n<strong>READ-COMMITTED(读取已提交)</strong> ： 允许读取并发事务已经提交的数据，可以阻止脏读，但是幻读或不可重复读仍有可能发生。\\n\\n<strong>REPEATABLE-READ(可重复读)</strong> ： 将其他事务对数据的操作隔离，同一事物内对同一字段的多次读取结果一致，数据只能由当前事务修改，可以阻止脏读和不可重复读，但幻读仍有可能发生。\\n\\n<strong>SERIALIZABLE(可串行化)</strong> ： 最高的隔离级别，完全服从 ACID 的隔离级别。所有的事务依次逐个执行，这样事务之间就完全不可能产生干扰，也就是说，该级别可以防止脏读、不可重复读以及幻读。\\n\\nMySQL 的隔离级别是靠锁（可串行）和 MVCC（读取已提交，可重读）共同实现的。\\n\\nMysql InnoDB 存储引擎的默认支持隔离级别是可重读级别，Mysql8.0 参考命令：\\n\\n```\\nSELECT @@transaction_isolation\\n```\\n\\n# MySQL 基础知识\\n\\n<strong>MySQL 架构</strong>\\n\\n![boxcnNt0rTfFvdHH1HQQlxIy3hh.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/8d4670e30ba8dcee4bfaed70ac636b84.png)![](static/boxcnNt0rTfFvdHH1HQQlxIy3hh.png)\\n\\nMySQL 的存储引擎采用插件式架构，支持多种存储引擎，存储引擎基于表，而非数据库。默认存储引擎（storage_engine）是 InnoDB，InnoDB 支持行级锁和表级锁，同时实现了 SQL 标准的四个隔离级别事务支持（可提交回滚）。InnoDB 支持外键，但是外键对性能有损耗，影响数据库插入速度。外键概念需要在应用层解决。\\n\\n<strong>MySQL 索引</strong>\\n\\n本质是一种有序的数据结构，常见的索引结构有 B 树(多路平衡查找树)，B+ 树,Hash,红黑树。InnoDB 使用的是 B+ 树。\\n\\n<strong>主键索引 PrimaryKey，一张表只能有一个主键，不能为 null，不能重复。</strong>\\n\\n<strong>主键索引属于聚簇索引，其他辅助索引属于非聚簇索引。</strong>\\n\\n除主键索引外的索引是二级索引，其原理是叶节点存储主键，通过主键去查找数据。\\n\\n<strong>唯一索引 UniqueKey,不能重复，但可以为 null;唯一索引主要为保证数据列的唯一不重复性，并不能提高查询效率。</strong>\\n\\n<strong>普通索引 Index，快速查询数据，运行重复和 NULL 值。</strong>\\n\\n<strong>前缀索引(Prefix) ：前缀索引只适用于字符串类型的数据。前缀索引是对文本的前几个字符创建索引，相比普通索引建立的数据更小， 因为只取前几个字符。</strong>\\n\\n<strong>全文索引(Full Text) ：全文索引主要用于检索大文本数据中的关键字的信息</strong>\\n\\n# MySQL 并发事务\\n\\n## 并发事务的控制方式\\n\\nMySQL 中并发事务的控制方式有两种，读写锁和 MVCC 多版本并发控制。\\n\\n锁有两种，<strong>共享锁（S 锁）和排他锁（X 锁）</strong>\\n\\n共享锁允许多个事务同时获取，事务在读取记录时获取。\\n\\n排他锁是事务在修改记录时获取，只能由一个事务获取。\\n\\n从锁的粒度上划分又可划分为表级锁和行级锁。\\n\\nMVCC 是多版本并发控制方法，原理是将数据分为多个版本存放，事务通过全局的版本分配器来为每一行数据设置版本号，版本号是唯一的。\\n\\n<strong>行级锁与表级锁</strong>\\n\\n<strong>锁需要根据事务的隔离级别来使用，不同隔离级别下锁可能会失效。例如在</strong><strong>已提交读（READ COMMITTED）</strong><strong>隔离级别下，</strong><strong>间隙锁(Gap Locks)</strong><strong>和</strong><strong>临键锁(Next-Key Locks)</strong><strong>会失效。</strong>\\n\\n表级锁对非索引字段加锁，作用的范围是一整张表，容易触发锁冲突，由于是对表加锁，没有行级锁快。\\n\\n<strong>行级锁针对索引字段加锁，MySQL 有三种实现方式，分别是记录锁，间接锁，临键锁。</strong>\\n\\n<strong>记录锁对于查询后的 n 条数据加锁，（唯一约束）</strong>\\n\\n<strong>间隙锁是根据查询条件中的查询范围对 N 条数据进行加锁的。</strong>\\n\\n<strong>临键锁是根据查询条件中查询范围的 N 条以及最后一条记录的右区间锁。</strong>\",\"articleCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/89e8ecc587033c3da71937e9a29abd32.png\",\"articleTitle\":\"数据库进阶知识笔记\",\"categoryName\":\"数据库文章\",\"isTop\":0,\"originalUrl\":\"\",\"status\":1,\"tagNameList\":[],\"type\":1}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 17:29:21', NULL);
INSERT INTO `tb_operation_log` VALUES (1089, '文章模块', '新增或修改', '/admin/articles', 'com.wy.blog.controller.ArticleController.saveOrUpdateArticle', '添加或修改文章', '[{\"articleContent\":\"# 数据库高级\\n\\n# 数据库的三级模式结构\\n![image.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/54e3bd7928703ed3c1e604dc1332834a.png)\\n\\n- 模式是数据库中是全体数据的逻辑结构和特征的描述，是所有用户的公共数据视图，一个数据库只有一个模式\\n- 外模式是模式的子集，是数据库用户能够看见和使用的局部数据的逻辑结构和特征的描述\\n- 内模式是一个数据库的物理结构和存储方式的描述，是数据在数据库内部的表示方式。\\n\\n# 事务\\n\\n事务有四大特性\\n\\n<strong>原子性(全部成功或么失败)，一致性（数据库完整性约束，转账操作），隔离性（事务间互相隔离），持久性</strong>\\n\\n# 事务隔离级别总结\\n\\nSQL 定义了四个标准隔离级别\\n\\n<strong>READ-UNCOMMITTED(读取未提交)</strong> ： 最低的隔离级别，允许读取尚未提交的数据变更，可能会导致脏读、幻读或不可重复读。\\n\\n<strong>READ-COMMITTED(读取已提交)</strong> ： 允许读取并发事务已经提交的数据，可以阻止脏读，但是幻读或不可重复读仍有可能发生。\\n\\n<strong>REPEATABLE-READ(可重复读)</strong> ： 将其他事务对数据的操作隔离，同一事物内对同一字段的多次读取结果一致，数据只能由当前事务修改，可以阻止脏读和不可重复读，但幻读仍有可能发生。\\n\\n<strong>SERIALIZABLE(可串行化)</strong> ： 最高的隔离级别，完全服从 ACID 的隔离级别。所有的事务依次逐个执行，这样事务之间就完全不可能产生干扰，也就是说，该级别可以防止脏读、不可重复读以及幻读。\\n\\nMySQL 的隔离级别是靠锁（可串行）和 MVCC（读取已提交，可重读）共同实现的。\\n\\nMysql InnoDB 存储引擎的默认支持隔离级别是可重读级别，Mysql8.0 参考命令：\\n\\n```\\nSELECT @@transaction_isolation\\n```\\n\\n# MySQL 基础知识\\n\\n<strong>MySQL 架构</strong>\\n\\n![boxcnNt0rTfFvdHH1HQQlxIy3hh.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/8d4670e30ba8dcee4bfaed70ac636b84.png)![](static/boxcnNt0rTfFvdHH1HQQlxIy3hh.png)\\n\\nMySQL 的存储引擎采用插件式架构，支持多种存储引擎，存储引擎基于表，而非数据库。默认存储引擎（storage_engine）是 InnoDB，InnoDB 支持行级锁和表级锁，同时实现了 SQL 标准的四个隔离级别事务支持（可提交回滚）。InnoDB 支持外键，但是外键对性能有损耗，影响数据库插入速度。外键概念需要在应用层解决。\\n\\n<strong>MySQL 索引</strong>\\n\\n本质是一种有序的数据结构，常见的索引结构有 B 树(多路平衡查找树)，B+ 树,Hash,红黑树。InnoDB 使用的是 B+ 树。\\n\\n<strong>主键索引 PrimaryKey，一张表只能有一个主键，不能为 null，不能重复。</strong>\\n\\n<strong>主键索引属于聚簇索引，其他辅助索引属于非聚簇索引。</strong>\\n\\n除主键索引外的索引是二级索引，其原理是叶节点存储主键，通过主键去查找数据。\\n\\n<strong>唯一索引 UniqueKey,不能重复，但可以为 null;唯一索引主要为保证数据列的唯一不重复性，并不能提高查询效率。</strong>\\n\\n<strong>普通索引 Index，快速查询数据，运行重复和 NULL 值。</strong>\\n\\n<strong>前缀索引(Prefix) ：前缀索引只适用于字符串类型的数据。前缀索引是对文本的前几个字符创建索引，相比普通索引建立的数据更小， 因为只取前几个字符。</strong>\\n\\n<strong>全文索引(Full Text) ：全文索引主要用于检索大文本数据中的关键字的信息</strong>\\n\\n# MySQL 并发事务\\n\\n## 并发事务的控制方式\\n\\nMySQL 中并发事务的控制方式有两种，读写锁和 MVCC 多版本并发控制。\\n\\n锁有两种，<strong>共享锁（S 锁）和排他锁（X 锁）</strong>\\n\\n共享锁允许多个事务同时获取，事务在读取记录时获取。\\n\\n排他锁是事务在修改记录时获取，只能由一个事务获取。\\n\\n从锁的粒度上划分又可划分为表级锁和行级锁。\\n\\nMVCC 是多版本并发控制方法，原理是将数据分为多个版本存放，事务通过全局的版本分配器来为每一行数据设置版本号，版本号是唯一的。\\n\\n<strong>行级锁与表级锁</strong>\\n\\n<strong>锁需要根据事务的隔离级别来使用，不同隔离级别下锁可能会失效。例如在</strong><strong>已提交读（READ COMMITTED）</strong><strong>隔离级别下，</strong><strong>间隙锁(Gap Locks)</strong><strong>和</strong><strong>临键锁(Next-Key Locks)</strong><strong>会失效。</strong>\\n\\n表级锁对非索引字段加锁，作用的范围是一整张表，容易触发锁冲突，由于是对表加锁，没有行级锁快。\\n\\n<strong>行级锁针对索引字段加锁，MySQL 有三种实现方式，分别是记录锁，间接锁，临键锁。</strong>\\n\\n<strong>记录锁对于查询后的 n 条数据加锁，（唯一约束）</strong>\\n\\n<strong>间隙锁是根据查询条件中的查询范围对 N 条数据进行加锁的。</strong>\\n\\n<strong>临键锁是根据查询条件中查询范围的 N 条以及最后一条记录的右区间锁。</strong>\",\"articleCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/89e8ecc587033c3da71937e9a29abd32.png\",\"articleTitle\":\"数据库进阶知识笔记\",\"categoryName\":\"数据库文章\",\"id\":58,\"isTop\":0,\"originalUrl\":\"\",\"status\":1,\"tagNameList\":[],\"type\":1}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 17:30:39', NULL);
INSERT INTO `tb_operation_log` VALUES (1090, '文章模块', '新增或修改', '/admin/articles', 'com.wy.blog.controller.ArticleController.saveOrUpdateArticle', '添加或修改文章', '[{\"articleContent\":\"# JAVA 基础\\n\\n# JAVA 变量\\n\\n## 变量标识符与 java 保留关键字\\n\\n变量不能由数字开头，一种说法是编译器做词法分析时数字开头会被当作一个字面量而非标识符。\\n\\n## 型参（传递来的变量）与实参（传给方法的变量）\\n\\n变量按照具体代码中的使用归类可以归为：\\n\\n<strong>形参：</strong><strong>定义方法</strong>时的变量，作为传递来的局部变量在方法中使用\\n\\n<strong>实参：</strong>要有确定的值，传给函数使用<strong>。</strong>\\n\\n## Java 中变量的传递（只有值传递，没有引用传递）\\n\\njava 只有<strong>值传递</strong>，基本数据类型传递值，引用类型传递对象在堆中的地址。\\n\\n<strong>个人理解：</strong>\\n\\n因为 java 中的数据已经被分为基本数据类型和引用类型了，一种是值，另外一种是内存中的地址，这一点已经将数据按值传递和按引用传递区分出来了，使用引用类型的对象作为形参就达到引用传递的效果。\\n\\n## 基本数据类型与引用类型\\n\\n<strong>Java 有 8 种基本数据类型</strong>，同时基本类型都有对应的引用数据类型，被称为<strong>包装类型；</strong>\\n\\n六种数字 + 布尔 + 字符类型\\n\\n整型：byte,short,int,long\\n\\n浮点型：float,double\\n\\n字符型：char\\n\\n布尔型：boolean\\n\\n![boxcnpRVMDqcAIF1U2BqM4qTHtd.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/0eaecf6aa24e6916376888b21d3be848.png)![](static/boxcnpRVMDqcAIF1U2BqM4qTHtd.png)\\n\\n![boxcn4Re2QZRBTPVcp4UerGrq0d.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/0c6c0fb236069f13a6762bb8e03c4d55.png)![](static/boxcn4Re2QZRBTPVcp4UerGrq0d.png)\\n\\nbyte,short,char 可以隐式转换为 int,支持 Switch 表达式，其包装类型也支持，jdk1.7 后 String 也支持了。\\n\\n<strong>引用类型不赋值的话默认为 null</strong>,null 是所有引用类型的默认值（没有赋默认值的时候）包装类也一样，但是<strong>如果包装类被 final 修饰时需要为其显式赋值</strong>。\\n\\n### 基本类型与包装类的存储位置：\\n\\n包装类型属于 Object,存放在堆中\\n\\n基本类型做<strong>成员变量</strong>时存放在堆中\\n\\n基本类型做<strong>局部变量</strong>时存放在 jvm 栈中的局部变量表\\n\\n### 包装类型的缓存机制\\n\\n四种<strong>整型</strong>的包装类默认缓存范围都是【-128，127】\\n\\nCharacter 创建的数值在【0，127】\\n\\nBoolean 直接返回 True 和 False\\n\\n<strong>对于超出缓存的包装类对象的值都会在堆中产生，比较时应该使用 equals 方法。</strong>\\n\\n![boxcniDEhOG1i1zeywqtOsoqfTL.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/1ccb64a10b7673ca2b6873e746028b7e.png)![](static/boxcniDEhOG1i1zeywqtOsoqfTL.png)\\n\\n### 基本数据类型产生的一些问题\\n\\n<strong>浮点数运算的精度缺失问题</strong>\\n\\n- BigDecimal 类以及提供的成员方法。\\n\\n<strong>超过 long 的整型</strong>\\n\\n- 超出 long 可以使用 BigInteger 来存储，因为其内部由 int[]数组来存储整型数据，但是运输效率会差一点。\\n\\n## 成员变量与局部变量\\n\\n<strong>语法形式</strong>\\n\\n<strong>存储方式</strong>\\n\\n<strong>生存时间</strong>\\n\\n### 修饰符区别\\n\\n成员变量和局部变量都可以被 final 修饰，<strong>局部变量</strong>不能被<strong>访问控制符</strong>和<strong>static</strong>修饰\\n\\n### 默认值\\n\\n- 局部变量不会自动赋值，需要自己为其赋值，如果没有赋值编译时会不通过。\\n- 成员变量除被 final 修饰后需要显式赋值外，其他情况会自动赋值；\\n- 如果 final 修饰了基本类型的变量，那么这个变量的值是不可更改的，如果是引用类型的变量，不变的只有指向这个对象的内存地址，对象自带的成员变量是可以修改的。\\n- String 对象的使用“=”赋值与使用 new 赋值的结果是不同的，参考：\\n\\n## 静态变量（static 修饰的成员变量）\\n\\n静态变量被<strong>类的实例对象</strong>所共享，<strong>随所属类的加载而产生，随所属类的回收而被释放；</strong>\\n\\njdk8 后的方法区不在 jvm 中而是在本地内存中，静态变量属于类的信息，jvm 规范中存放于方法区内，逻辑上是属于堆中。\\n\\n## 静态方法与实例方法\\n\\n<strong>调用方式：</strong>\\n\\n<strong>静态方法</strong>可以由<strong>类和对象</strong>调用，<strong>实例方法</strong>调用前必须先创建实例。\\n\\n<strong>访问类成员：</strong>\\n\\n对于<strong>本类中的变量和方法</strong>来说，<strong>静态方法</strong>中可以访问静态的变量和方法，实例方法和实例的成员变量需要先<strong>创建实例</strong>才可以在静态方法中使用\\n\\n实例方法中声明的变量，如果是基本类型的话方法生命周期结束的时候会被回收，应该用 final 修饰成常量，这样可以保证方法执行完后被 gc 回收。\\n\\n# JAVA 类\\n\\n## 面向对象三大特性\\n\\n<strong>封装，继承，多态</strong>；\\n\\n<strong>封装可以控制其他对象的成员变量，方法的访问。</strong>\\n\\n封装的变量和方法通过访问修饰符来限定作用范围，范围大小为<strong>public>protected(同一包，不同包的子类)>default（同一包内）>private（同一类中）</strong>\\n\\n有继承关系的类中，<strong>子类可以拥有父类的所有属性和方法（私有的只是拥有，不可访问）</strong>，但是<strong>父类中的私有属性和方法子类无法访问</strong>；\\n\\n<strong>多态</strong>分为<strong>编译时多态</strong><strong>（方法重载）</strong>和<strong>运行时多态</strong><strong>（方法重写）</strong>\\n\\n## 重载和重写的区别\\n\\n重载能让同一个方法处理不同参数的结果，如果一个类中重载了 n 个方法，在编译阶段 java 会根据具体传入的参数去匹配重载的方法。\\n\\n重写是运行时多态的实现，由于虚拟机在运行时已经将 static 方法做了绑定，所以重写 static 方法的话，执行的时候并不会使用重写后的方法。\\n\\n## 内部类\\n\\n<strong>使用内部类的目的</strong>\\n\\n内部类主要是为了提高安全性，内部类有四种类型，成员内部类，静态内部类，局部内部类，匿名内部类\\n\\n<strong>成员内部类</strong>\\n\\n成员内部类由外部类实例化创建的对象创建（Obj.new 内部类()）\\n\\n<strong>静态内部类</strong>\\n\\n可以定义静态方法和普通方法，外部类对象想调用静态方法需要用类限定名去获取 Obj.inner\\n\\n普通方法需要用实例去获取 Obj.inner()\\n\\n<strong>匿名内部类</strong>\\n\\n匿名内部类只能\\n\\n## 接口（约束类的行为）和抽象类（代码复用）\\n\\n<strong>接口的特性</strong>\\n\\n接口默认只有包访问权限，全局使用需要声明 public。\\n\\n接口中的<strong>成员方法</strong>只有声明，没有实现（public abstrat）同时接口用来规范实例对象，不能包含<strong>静态方法</strong>。jdk1.8 中使用可以包含默认方法（default 修饰）\\n\\n接口中的<strong>成员变量</strong>默认为 final 和 static（不声明也是）,方法默认 public。\\n\\n<strong>抽象类的特性</strong>\\n\\n抽象类可以有构造方法，抽象方法，普通方法\\n\\n<strong>最终类，最终方法的特性</strong>\\n\\nfinal 修饰的类/方法被称为最终类/最终方法\\n\\n- 都不能被实例化\\n\\n  - 不管抽象类还是接口定义的方法都没有<strong>方法体</strong>，实例化必须要加载类，如果不知道方法体，是不能加载的。\\n- 都可以包含抽象方法\\n- 都有默认实现方法\\n\\n## JAVA 中的单例模式\\n\\n<strong>单例的介绍</strong>\\n\\n保证一个类仅有一个实例，并提供一个访问它的全局访问点\\n\\n<strong>单例的实现模式</strong>\\n\\n<strong>参考</strong>\\n\\n<strong>饿汉模式</strong>\\n\\n优点： 实例的创建不由需求决定，使用静态常量保存实例有利于 jvm 中的线程安全\\n\\n缺点： 非懒加载，长时间占用内存空间。\\n\\n三种实现：\\n\\n- 使用静态常量存实例对象，\\n- 使用枚举类，因为枚举类编译后为为 final class，不会被破坏，是线程安全的。\\n- 创建对象放在静态代码块中\\n\\n<strong>懒汉模式</strong>\\n\\n类提供方法（getInstance()）用于外界获取实例，多线程下会发生线程安全问题\\n\\n两类实现：\\n\\n- 方法中直接创建单例（单/多线程）\\n- 方法中调用内部类创建的单例\\n\\n需要给创建实例的代码<strong>加锁</strong>，建议<strong>双层判空</strong>，提供效率。\\n\\n需要为单例声明<strong>volatile 类型</strong>，因为创建实例（new 对象）不是一个原子指令即使加锁后仍然有可能发生未初始化实例就被外部获取的风险。\\n\\n![boxcn2L1hjiXxXpjDup6likLCLd.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/000a5e78cec3834b9d4fe53e257924e9.png)![](static/boxcn2L1hjiXxXpjDup6likLCLd.png)\\n\\n## Object 类\\n\\nObject 类是所有类的父类,基本上所有自带的方法都是 native 方法（native 相关知识参考：[java 中 native 的用法 - 不止吧 - 博客园](https://www.cnblogs.com/b3051/p/7484501.html)），\\n\\n常见的方法：\\n\\n- 对象有关的方法\\n\\ngetClass() 不可重写\\n\\nhashCode() 哈希表中对象的哈希码\\n\\nclone() 可重写，但一般都是调用 Object 的\\n\\ntoString() 可重写\\n\\nequals() 比较内存地址，可重写，String 类已经重写了，用于比较字符串的值是否相等\\n\\n- 线程有关的方法\\n\\nnotify()\\n\\nnotifyAll()\\n\\nwait()\\n\\nfinalize() gc 回收时触发的操作。\\n\\n![boxcnyIqd3nW4AHg3O6ckcdrOcf.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/e13057858648efc61edf99922c793b2e.png)![](static/boxcnyIqd3nW4AHg3O6ckcdrOcf.png)\\n\\n![boxcngRqESop7X0WvxUhi2IudVb.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/9a6a089e6e89eedfc97d9e8ad71edda8.png)![](static/boxcngRqESop7X0WvxUhi2IudVb.png)\\n\\n### 实现对象的克隆\\n\\n需要先实现 Cloneable 接口，然后重写 clone()方法，这样的克隆属于浅克隆\\n\\n实现 Serializable 接口使对象进行序列化和反序列化操作，这样的克隆属于深克隆。\\n\\n### 对象相等（内存内容相等）对象引用相等（内存地址相等）\\n\\n### hashCode()的作用\\n\\n获取<strong>哈希码</strong>（散列码），<strong>哈希码</strong>可以确定该对象在<strong>哈希表中的索引位置，可用于比较对象是否相等。</strong>\\n\\nHashSet 加入对象时会<strong>先计算哈希码来判断对象的位置</strong>，如果计算的位置已经有对象了，就调用 e<strong>quals()方法检查对象的内部信息是否相同</strong>，两次检查都相同才会忽略对象，有一次不同就会将该对象重新散列到其他的位置，同时加入到 HashSet 中。,hashCode 为主要判断对象相等的方法，equals 为第二层保险\\n\\n## String 类\\n\\n### String 初始化\\n\\n如果使用“=”进行赋值,实际上只创建的一个 String 对象，\\\"str\\\"是一个字面值，会存入<strong>字符串常量池</strong>中。\\n\\n```\\nString reference1 = \\\"str\\\";\\nString reference2 = \\\"str\\\"; // 两个String对象同时指向了常量池中的“str”\\n```\\n\\n如果使用了 new 创建的对象由于 jvm 为其分配了两个内存地址，存入了<strong>堆</strong>里；其 equals 的值相等，但是 hashCode 不相等，断言判断为 False\\n\\n```\\nString strObj1 = newString(\\\"str\\\");\\nString strObj2 = newString(\\\"str\\\");\\nassertFalse(strObj1 == strObj2);\\n```\\n\\n### String 类的线程安全性，三者都属于 java.lang 包中的最终类\\n\\nString 中的对象是不可变对象，是线程安全的。\\n\\nStringBuffer 的方法有同步锁，也是线程安全的。\\n\\nStringBuilder 的方法未加同步锁是非线程安全的。\\n\\n### String 类的版本变化\\n\\n三者都是放在 java.lang 包中；\\n\\njava9 之前三者都是使用 char[]来保存字符，java9 以后就是使用 byte[]字节来存储字符串；\\n\\n### 字符串拼接的本质\\n\\n字符串对象的拼接方式有两种，“+” 和 StringBuilder 的 append()方法，字符串对象通过“+”的字符串拼接方式实际上也是通过调用 StringBuilder 的 append()方法拼接的，实际上在循环中进行拼接的话，编译器就会创建多个 StringBuilder 对象，这也是性能缺陷的原因。\\n\\n### 字符串有关应用\\n\\n# JAVA 集合框架（<strong>Java Collections Framework</strong>）\\n\\nJAVA 集合框架可以归为两种类型的容器，集合与图，JAVA 的集合框架设计用于存放和管理 Java 对象(基础类型需要转成包装类对象)；\\n\\n两种类型容器之间的区分是按照其存储元素的特性来区分的，集合接口（Collection）存储的元素都是单列元素，存储元素的<strong>值</strong>，图接口（Map）存储的元素是双列元素（关联式存储），存储的是<strong>键值对</strong>（Entry 对象）。\\n\\n## 集合框架图解\\n\\n## 集合框架相关工具类\\n\\n<strong>java.util.Arrays.asList</strong>\\n\\n用途： 用于将<strong>引用类型数组</strong>转换为<strong>List 接口</strong>的容器。\\n\\n<strong>asList 的参数必须是 List 接口的泛型对象（可以为单个对象，也可以为对象数组。）</strong>\\n\\n![boxcnhxBYbsKUetkXx1qv6gNhkf.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/b472e57979f15c21659a35a76ea6341a.png)![](static/boxcnhxBYbsKUetkXx1qv6gNhkf.png)\\n\\nasList 创建的集合是不可变集合，一般不直接这样给新集合容器赋值，而是将其作为新集合容器的构造参数作为使用。正确示范：\\n\\n```\\nString[] myArray = {\\\"1\\\",\\\"2\\\",\\\"3\\\"};\\nArrayList<String> myList = ArrayList<>(Arrays.asList(myArray))；\\n```\\n\\n- 如果想要获取<strong>不可变对象</strong>，则需要使用<strong>Collections.unmodifableList()</strong>方法获取：\\n\\n```\\nList<String> list = new ArrayList<>(Arrays.asList(\\\"one\\\", \\\"two\\\", \\\"three\\\"));\\nList<String> unmodifiableList = Collections.unmodifiableList(list);\\n```\\n\\n- 由于 Java 集合操作的是引用类型的对象，基本类型不能直接转换；如果想从基本类型转换为 List 可以使用 jdk1.8 的 Stream 新特性，参考：[实习随记](https://aql0chlim8.feishu.cn/wiki/wikcnnUpb8aoi1rvuOe1IztBrSh#W00IdM2EuoACGKxViT4cEHGlnzc)\\n\\n## 集合框架常问知识\\n\\n### fail-fast 事件\\n\\n对于迭代的中的元素如果进行添加/删除操作，会触发 fail-fast 事件，这个事件是用于提醒开发人员可能存在并发修改的问题。其根本原因是使用增强 for 循环时，如果在遍历的过程中原集合容量发生了改变，那么会导致遍历中的操作数与遍历前操作数不一致，java 就是根据二者的值不相等抛出异常的。\\n\\n### ArrayList （底层数组，动态扩容，快速随机访问）与 LinkedList （头尾存取，耗内存）区别?\\n\\n<strong>底层数据结构的区别：</strong>\\n\\n首先是底层的数据结构不同，ArrayList 底层是数组，可以动态扩容；而 LinkedList 底层使用的是双向链表实现了 List 接口和 Deque 接口（jdk1.8 后，之前是使用双向循环链表，区别：[数据结构篇](https://aql0chlim8.feishu.cn/wiki/wikcnGB4pO1SikXXPmuf3bThcyh#VaMidieOmoc2mExUJ6Yc53zjnFc) ）\\n\\n<strong>增删查改方面</strong>\\n\\nArrayList 更适合查数据和改数据\\n\\nArrayList 未排序情况下查找元素的时间复杂度是 O(n)，排序数组是 O(logn)\\n\\nLinkedList 唯一的优点是头尾增删快。\\n\\n<strong>内存方面</strong>\\n\\nArrayList 需要预留内存，但是 LinkedList 单个节点信息除了<strong>原数据</strong>外还有<strong>前驱节点和后继节点</strong>信息，需要消耗更多空间，一般选择用<strong>ArrayList</strong>。\\n\\n### LinkedList 与 ArrayDeque,Stack 的比较\\n\\n<strong>ArrayDeque 比 LinkedList 快的原因：</strong>\\n\\n内存方面：<strong>ArrayDeque</strong>底层用<strong>数组存储数据，是连续的内存空间</strong>，而<strong>LinkedList 链表的内存空间是非连续的</strong>，寻址方面 ArrayDeque 更快。\\n\\n执行速度方面：LinkedList 没有扩容的时间花费，但是每次插入元素都要进行 new 操作，执行类加载，对象创建的过程，new 操作的过程：\\n\\n<strong>推荐使用 ArrayDeuqe 代替 Stack 的原因</strong>\\n\\n- Stack 继承了 Vector,加锁的方法执行慢\\n\\n### HashMap 和 TreeMap 区别\\n\\nTreeMap 可以搜索集合内的元素，且可以对元素进行排序\\n\\n### HashSet 与 HashSet 的区别\\n\\n### comparable 和 Comparator 的区别\\n\\n两者都是用来比较 java 对象的接口，comparable 的实现类创建的实例对象可以使用类中定义的 compareTo 方法进行比较，Comparator 是比较器是一个泛型接口，可以用于比较两个对象。\\n\\n### 无序性与不可重复性\\n\\n无序性不是随机存放的意思，而是根据数据对应的哈希值决定。\\n\\n不可重复性是指 equals()方法与 hashCode()方法都成立\\n\\n### 红黑树理解\\n\\n### 常用容器整理（顺序： 数组 > 链表 > 树 > 哈希表  线程不安全 > 线程安全）\\n\\n#### ArrayList\\n\\n![boxcnGaWtUYNnxz9fI1BB6tAo4b.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/04502f1274df8f4f413fe73c049bc619.png)![](static/boxcnGaWtUYNnxz9fI1BB6tAo4b.png)\\n\\n<strong>ArrayList 的扩容机制</strong>\\n\\n- <strong>无参构造方法</strong>创建的是<strong>空数组</strong>，<strong>添加元素时才会赋值</strong>\\n- 添加元素时判断当前容量是否需要扩容，每次扩容大概变为原来容量的 1.5 倍\\n\\n![boxcnIpgJz6XiJ5x3RzIQ0s60Ad.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/1f6fc5e27af79fdf698fc8115ff5ec0f.png)![](static/boxcnIpgJz6XiJ5x3RzIQ0s60Ad.png)\\n\\n- ArrayLis 提供了 `ensureCapacity` 小幅度提升大数据量的添加效率\\n\\n#### LinkedList\\n\\n#### Vector\\n\\nVector 内部所有方法都加了 synchronized，内部是线程安全的，但是多线程环境下组合操作 Vector 仍然需要进行同步处理。\\n\\n参考：[Vector 的线程安全问题_小小本科生 debug 的博客-CSDN 博客_vector 线程安全吗](https://blog.csdn.net/A12115419/article/details/121145752)\\n\\n#### PriorityQueue\\n\\n优先级队列，出队优先级最高的先出队。\\n\\n底层使用可变长数组来存储数据\\n\\n插入和删除元素的时间复杂度是 O(logn)\\n\\n存储的元素需要不为空，同时实现 comparable 接口。\\n\\n#### <strong>HashMap</strong>\\n\\nHashMap 只能有一个空键，但是可以有多个空值\\n\\n<strong>HashMap 的容量</strong>\\n\\n1.8 默认容量是 16，HashMap 的容量永远是 2 的次方，创建时容量会被转成 2 的幂次方，因为哈希表中的 hash 值的范围很大（32 位），内存装不下，需要对数组长度取模后才是对应存放的位置\\n\\n而取模运算可以优化为位运算，\\n\\n相比 HashTable 没有为方法加锁，加锁的是 ConcurrentHashMap，HashMap 允许空值，键只能有一个空值。\\n\\n1.8 以后，进行扩容操作后会从链表转红黑树。\\n\\n底层是数组链表，根据 hashcode 分配数组空间，链表解决 hash 碰撞的问题，当 hash 碰撞次数，也就是链表长度大于阈值（8）时将链表转换为红黑树，同时<strong>HashMap 可以对数组扩容以存放更多元素。</strong>\\n\\n<strong>HashMap 的遍历方式与性能分析</strong>\\n\\n<strong>结论</strong>：\\n\\n遍历时使用 entrySet 性能更好，同时使用 iterator 方法遍历是安全的\\n\\n使用 Lambda 或 Stream 可以先进行无用数据的过滤或者删除再进行遍历才能可以保证遍历安全。\\n\\n#### HashSet\\n\\nHashSet 实现了 Set 接口，线程不安全，存放唯一元素，\\n\\n<strong>HashSet 检查重复的方法：</strong>\\n\\n1. 主要通过比较 hashCode 是否相同，如果相同还会调用 equals()方法进行检查\\n2. 1.8 添加时如果遇到重复的元素，并不是舍去而是执行替换操作。\\n\\n#### TreeSet\\n\\n<strong>简介：</strong>TreeSet 是一个<strong>有序集合</strong>，实现了 NavigableSet 接口，可以<strong>对元素进行排序</strong>，初始线程不安全，但是可以使用<strong>Collections.synhronizedSet()</strong>包装器在外部进行同步。\\n\\n#### CopyOnWriteArrayList\\n\\n<strong>位置：java.util.concurrent</strong>\\n\\n<strong>简介</strong>：一个线程安全的 ArrayList 并发容器，主要通过读写分离的并发策略来实现线程安全。其写操作如字面意思，会通过创建底层新副本来实现，读操作不用加锁。\\n\\n<strong>使用场景与优缺点：</strong>\\n\\nCopyOnWriteArrayList 适用于读多写少的情况，由于进行写入操作时会对原数组进行复制，导致额外的内存占用，由于写入后还需要将原引用指向复制出来的内存空间，所以读操作的实时性并不好。\\n\\n# 拷贝知识\\n\\n- 引用拷贝：创建的新 java 对象实际上并不会在堆中创建新对象\\n- 浅拷贝：创建的新 java 对象会存到堆中，除类变量不变外，其他的成员变量如果是基础类型那么会给新值，拷贝类可以通过实现 Cloneable 接口后重写 clone()方法实现（直接调用 Object 的 clone()方法）\\n- 深拷贝：堆中创建完全独立的对象，新对象中成员变量如果有引用类型的变量也会一同新创建‘\\n\\n参考： [数据结构篇](https://aql0chlim8.feishu.cn/wiki/wikcnGB4pO1SikXXPmuf3bThcyh#RY06dQOK4oeaSOxkVZScWaZonNd)\\n\\n# Java 异常\\n\\n## Exception 和 Error 的区别\\n\\n<strong>Exception 和 Error 是 Throwable 的子类</strong>在 java 中，所有的异常类都继承自 java.lang 包中的 Throwable 类，Java 中的异常按程序是否可处理分为两类：<strong>程序可处理的异常（Exception）</strong>和<strong>程序无法处理的异常（Error）</strong>异常都是可以捕获的（java 规范不建议捕获 Error），Error 异常发生时 JVM 会选择线程终止。\\n\\n使用异常的性能成本非常高，创建一个异常非常慢，抛出异常也会消耗毫秒级的时间。\\n\\n可处理的异常（Exception）又可按是否需要处理分为<strong>受检测异常</strong>和<strong>不受检测异常</strong>，受检测的异常如果我们没有在代码中进行处理是不能通过编译的。除<strong>RuntimeException</strong>系列的异常类外，其他的 Exception 都是受检测异常。\\n\\n![boxcn6CPJlKzBODLIV45ug6ADvv.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/98b002c674ccff63b017dd4fbe8cda5d.png)![](static/boxcn6CPJlKzBODLIV45ug6ADvv.png)\\n\\n### 常见的异常\\n\\n<strong>必检异常</strong>\\n\\nIOException IO 流相关的异常\\n\\nClassNotFoundException 类没找到的异常\\n\\nFileNotFoundException 文件未找到异常\\n\\n<strong>非必检异常</strong>\\n\\nArithmeticException 运算错误\\n\\nIndexOutOfBoundsException 越界\\n\\n<strong>无法处理的异常</strong>\\n\\nOutOfMemoryError(内存不够产生的错误）\\n\\nVirtualMahcineError(java 虚拟机运行错误)\\n\\nNoClassDefFoundError(类定义错误)\\n\\nStackOverFlowError(栈溢出错误)\\n\\ntry-catch-finally 的一些特性\\n\\n- finally 块中的语句都会被 jvm 执行，如果 catch 中遇到 return 语句，finally 语句将再返回前被执行。\\n\\ntry-catch-resource 的特性\\n\\n- 处理多个资源时按栈的顺序关闭，（先进后关）\\n\\n# Java IO\\n\\n## IO 模型参考\\n\\n[操作系统相关知识](https://aql0chlim8.feishu.cn/wiki/wikcnU7RyVKJqDSlBwn6gehiUfg#doxcn84EMCe040ksWu2KwJFvGGb)\\n\\n## 同步与异步的区别\\n\\n- 同步 ： 发出一个调用之后，在没有得到结果之前， 该调用就不可以返回，一直等待。\\n- 异步 ：调用在发出之后，不用等待返回结果，该调用直接返回。\\n\\n## Java 的三种 IO 模型\\n\\n### BIO\\n\\n同步阻塞 IO 模型，性能差，程序会一直阻塞，直到拿到内核中的数据。\\n\\n### NIO\\n\\n多路复用模型，网上有些说法是 NIO 属于同步非阻塞模型，但是我之前学 python 爬虫的时候接触过同步非阻塞模型，缺点是程序会不断调用请求，耗费 cpu 资源。\\n\\nNIO 通过选择器接受客户端数据，只有数据到了后才为其服务，这样可以管理多个客户端数据。减少了系统调用，从而相比 BIO 减少了 CPU 资源的消耗\\n\\n### AIO\\n\\nAIO 是异步 IO 模型，基于事件和回调机制，应用程序发送 io 请求后不阻塞，直接返回，系统获取到数据后回调回去。\\n\\n## JavaIO 基础\\n\\n计算机中存储的数据以字节为单位来计算大小，所以 io 流都是基于字节来操作的，但是字符比较特殊，因为字符有不同的编码格式，直接使用字节流处理字符会出现乱码的情况，所以 java 单独设计了一个字符流用于处理字符。\\n\\n按过程来区分：输入流和输出流\\n\\n按数据处理方式来区分：字节流和字符流\\n\\n## 与 FileInputStream/FileOutputStream 配合使用的流\\n\\n流处理过程中，一般先将输入流转换为 FIS,之后再进行其他流的转换；要将 FIS/FOS 作为构造参数才能使用\\n\\n<strong>BufferedInputStream/BufferedOutputStream</strong>\\n\\n字节缓存流，常用于将所有字节转换为一个 String 对象；\\n\\n<strong>DataInputStream/DataOutputStream</strong>\\n\\n用于读取指定类型数据\\n\\n<strong>ObjectInputStream/ObjectOutputStream</strong>\\n\\n用于序列化和反序列化 java 对象\\n\\n## 字节缓冲流\\n\\n缓冲流使用数组来一次性操作多个字节提高流的传输效率\\n\\n## 字符流\\n\\n字符流默认采用 Unicode 编码，可以通过构造方法自定义编码，常用的字符编码：\\n\\n| 编码格式 | 字母所占字节 | 汉字所占字节 |\\n| -------- | ------------ | ------------ |\\n| unicode  | 2            | 2            |\\n| utf8     | 1            | 3            |\\n| gbk      | 1            | 2            |\\n\\n## 字符流与字节流的转换\\n\\n通过 FileReader 和 FileWriter 进行文本的读写，字符缓冲流使用 BufferedReader 和 BufferedWriter.\\n\\n## 控制台流\\n\\n格式化输入：Scanner\\n\\n常用的 System.out 是获取 PrintStream 对象对其进行流操作\\n\\n![boxcnPhi4Haq7DiRsWR3h5Lqcrc.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/56c5608c5640ad6bbbefafb09d147b8c.png)![](static/boxcnPhi4Haq7DiRsWR3h5Lqcrc.png)\\n\\nSystem.in 则是标准输入流（InputStream 对象）\\n\\n![boxcnzc7aZ149XOyhoPxEenJzte.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/cacf8f24f1d3037776699dcde5f3df8e.png)![](static/boxcnzc7aZ149XOyhoPxEenJzte.png)\\n\\n## 随机访问流\\n\\n跳转到文件任意位置进行读写操作的 RandomAccessFile,实现了随机访问接口 RandomAccess\\n\\n## Java IO 设计模式\\n\\n### 装饰器模式\\n\\n在已有对象的基础上进行功能性拓展，从一个核心对象衍生出多种具有不同特性的对象。\\n\\n例如标准输入输出流拓展出缓冲流，数据流，对象流；\\n\\n装饰器类需要跟原始类继承相同的抽象类或者实现相同的接口。\\n\\n<strong>使用原因</strong>\\n\\n简化对象继承关系，拓展对象功能不会产生复制的继承关系。\\n\\n### 适配器模式\\n\\n适配器的功能在于适配，使两种不同特性,接口不兼容的类或对象可以互相转换。\\n\\n适配器只需要提供转换的功能，因此不需要与适配者继承相同抽象类或实现相同接口。\\n\\n字节流和字符流之间的相互转换；\\n\\n### 工厂模式\\n\\n工厂模式用于批量创建对象，分为静态工厂和简单工厂，NIO 中大量使用到了工厂模式，比如以 new 和 get 开头的方法，一般都是按工厂模式创建对象；\\n\\n### 观察者模式\\n\\n观察者模式的特点是监听机制，可以监听对象事件，一般通过定期轮询的方式监听事件。\\n\\nNIO 中的文件监听服务(WatchService)，WatchService 可以监听对象的多种事件，比如文件的增删改\",\"articleCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/f43463921f96513ae770487495eb8344.png\",\"articleTitle\":\"JAVA基础笔记\",\"categoryName\":\"后端文章\",\"isTop\":0,\"originalUrl\":\"\",\"status\":1,\"tagNameList\":[\"JAVA\"],\"type\":1}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 17:37:28', NULL);
INSERT INTO `tb_operation_log` VALUES (1091, '文章模块', '新增或修改', '/admin/articles', 'com.wy.blog.controller.ArticleController.saveOrUpdateArticle', '添加或修改文章', '[{\"articleContent\":\"# JAVA 并发多线程\\n\\n# 多线程基础知识\\n\\n## 多线程 java\\n\\n一个 java 程序 创建的进程中包含 main 线程和多个其他线程，所以 java 天生就是多线程程序。\\n\\nThread 类创建的实例对象就代表 java 中的一个线程。\\n\\n<strong>java 中创建线程的方式主要有三种</strong>：继承线程类，实现和运行调用（Runnable Callable）有关的接口，通过线程池创建线程。\\n\\n<strong>java 中停止一个正在运行的线程</strong>\\n\\n<strong>线程中常用的方法</strong>\\n\\nstart() getName() sleep() join() yield()\\n\\n<strong>线程与进程介绍：</strong>[操作系统相关知识](https://aql0chlim8.feishu.cn/wiki/wikcnU7RyVKJqDSlBwn6gehiUfg#doxcno8CkWgg6UQAcSu1PpbPVmg)<strong> </strong>\\n\\n- 一个进程中可划分为多个线程\\n- 线程共享进程中的堆（内存区，用来为创建的对象分配内存）和方法区(类信息，静态变量，常量，编译后代码)\\n- 线程拥有私有程序计数器（记录当前线程执行位置），虚拟机栈（处理字节码），本地方法栈（Native 方法）两个栈都存有线程的局部变量信息，所以是私有的。\\n\\n<strong>独立与共享有关的知识点</strong>\\n\\n进程之间是独立的，而线程容易相互影响，有线程安全的问题。\\n\\n<strong>线程有关知识:</strong>[操作系统相关知识](https://aql0chlim8.feishu.cn/wiki/wikcnU7RyVKJqDSlBwn6gehiUfg#doxcnqmK28csI6iuI2urg92HO67)<strong> </strong>\\n\\n# java 内存模型（JMM）\\n\\n首先 java 内存模型主要是为了简化多线程编程，增强程序可移植性。\\n\\n根据内存模型抽象出了两个概念：本地内存和主内存\\n\\n线程只能访问本地内存，当线程访问在主内存中的共享变量时实际上是访问直接本地内存当中的副本，\\n\\n<strong>并发编程的三个重要特性：</strong>\\n\\n原子性（synchronized，锁），可见性（synchronized,volatile,锁），有序性（指令重排引起，volatile 解决）\\n\\n# 并发编程\\n\\n并发（抢票）与并行（定时邮件）\\n\\n## 线程池\\n\\n优化性能，提高资源利用率通过 ThreadPoolExceutor 去获取线程池，线程池有三种类型：\\n\\n<strong>FixedThreadPool</strong> ： 该方法返回一个固定线程数量的线程池。\\n\\n<strong>SingleThreadExecutor：</strong> 方法返回一个只有一个线程的线程池。\\n\\n<strong>CachedThreadPool：</strong> 该方法返回一个可根据实际情况调整线程数量的线程池。\\n\\n<strong>线程池有三个重要参数</strong>\\n\\n<strong>corePoolSize</strong><strong> :</strong> 核心线程数指最小可同时运行的线程数。\\n\\n<strong>maximumPoolSize</strong><strong> :</strong> 任务队列满后，可同时运行的最大线程数。\\n\\n<strong>workQueue</strong><strong>:</strong> 任务队列\\n\\n## <strong>volatile 关键字的作用</strong>\\n\\nvolatile 用于保证变量的可见性，不能保证变量操作的原子性，标记变量为一个共享变量编译器使用变量时会从主存读取。\\n\\nvolatile 还用于防止 JVM 的指令重排序：双重锁实现对象单例：[JAVA 基础](https://aql0chlim8.feishu.cn/wiki/wikcniBkHFE5nv0K67qpI77T2Je#doxcn64wyW6KWEUagkPkErRaJpf)\\n\\n当 volatile 修饰了变量，可以防止在多线程环境下，获取到还没有初始化的实例对象\\n\\n<strong>对象创建的过程：</strong>\\n\\n- 为变量分配内存空间\\n- 初始化变量\\n- 将变量指向分配的内存地址\\n\\n## java 锁机制（synchronized 加锁）\\n\\n## synchronized 关键字\\n\\n翻译过来是同步的意思，使用方式有三种\\n\\n1. 修饰实例方法（加对象锁）\\n2. 修饰静态方法（加类锁）\\n3. 修饰代码块（可指定锁的类型，对象锁和类锁都可以加）\\n\\nsynchronized 不可以修饰构造方法，因为构造方法本身是线程安全的。修饰静态方法时加的是类锁\\n\\n### synchronized 底层原理\\n\\n通过 javap 查看字节码信息。\\n\\n<strong>synchronized 代码块实现原理</strong>\\n\\n![boxcnWT1HEEb2cReqUpEZBuiHdb.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/f70d75ff68943d395c80cc0127a2072a.png)![](static/boxcnWT1HEEb2cReqUpEZBuiHdb.png)\\n\\nmethod 方法中的同步块信息中使用到了 monitorenter 指令和 monitorexit 指令，\\n\\nmonitorenter 指令用于使线程获取对象监视器（ObjectMonitor），如果锁的计数器为 0，则可以获取，获取后计数器 +1，线程执行到 monitorexit 指令释放锁，将锁计数器设为 0。\\n\\n![boxcnH8TiQX3P7NdxqSEvgC95Yb.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/aede259a8b9ef6763e3478024e511b5f.png)![](static/boxcnH8TiQX3P7NdxqSEvgC95Yb.png)\\n\\n<strong>synchronized 方法实现原理</strong>\\n\\n![boxcnGKl8bK1E1Qb4JliJRLIksf.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/11388b0cffb8611b2f4420894d5bdfd0.png)![](static/boxcnGKl8bK1E1Qb4JliJRLIksf.png)\\n\\n![boxcnlRU2dCUbygedw7UcN4VS7c.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/00da92fb7da6d6a90730d43f3ba589cb.png)![](static/boxcnlRU2dCUbygedw7UcN4VS7c.png)\\n\\n用 synchronized 修饰的方法在转换为字节码后会加上一个标识，jvm 通过这个标识来为该方法执行同步调用。\\n\\n实例方法获取对象锁，静态方法获取类锁\\n\\n## 对象锁和类锁\\n\\n- 对象锁 - new 多个对象去操作，无法实现互斥\\n- 类锁由于全局只有一个，有点像单例的，在一个 jvm 内能保证是互斥的\\n\\n## 原理·对象头\\n\\nJVM 中对象在内存中分为三个区域，对象头，实例数据，填充数据\\n\\nsynchronized 是基于对象作为锁的，锁信息都放在了对象头的 MarkWord 中\\n\\n一个线程想要竞争当前的锁资源首先是看 MarkWord 中的锁标记位（锁的计数器），根据标记位判断锁的类型，以不同方式竞争。\\n\\n## jdk1.6 后对于锁的优化与拓展\\n\\n### 锁的四种状态与状态升级\\n\\n锁只能升级不可降级，这是为了提高锁的使用效率\\n\\n锁的四种状态：无锁状态、偏向锁状态、轻量级锁状态、重量级锁状态\\n\\n在初始化状态的对象的锁信息有两种情况：\\n\\n- 无锁状态： 当前状态没有开启偏向锁，对象头中的 MarkWord 存储的是一般的 hashcode 等信息\\n- 匿名偏向： 开启偏向锁后 MarkWord 存储的就是偏向锁相关的信息，只是没有指向任何的线程\\n\\n<strong>偏向锁</strong>只有一个线程来拿锁资源，没有竞争，当再来一个线程后触发竞争，<strong>锁升级</strong>为<strong>轻量级锁</strong>\\n\\n- 轻量级锁以 CAS 的方式去竞争锁资源，不会让<strong>线程挂起</strong>\\n- 线程频繁挂起以及被唤醒的话，需要在用户态和内核态之间相互转换，为了避免线程挂起，所以我们要运用到轻量级锁\\n\\n### 锁消除\\n\\n### 锁膨胀\",\"articleCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/364b627a190b54514e40883fbbad2bb4.png\",\"articleTitle\":\"JAVA并发基础笔记\",\"categoryName\":\"后端文章\",\"isTop\":0,\"originalUrl\":\"\",\"status\":1,\"tagNameList\":[\"并发多线程\"],\"type\":1}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 17:40:15', NULL);
INSERT INTO `tb_operation_log` VALUES (1092, '文章模块', '新增或修改', '/admin/articles', 'com.wy.blog.controller.ArticleController.saveOrUpdateArticle', '添加或修改文章', '[{\"articleContent\":\"# Redis 笔记\\n\\n# Redis 的性能优化\\n\\n- Redis 基于内存存储数据\\n- Redis 内置了多种优化的数据结构实现，进一步提高了性能\\n\\n# Redis 的数据结构\\n\\n总共 8 种，五种基本结构，三种特殊结构\\n\\n<strong>基本结构</strong>\\n\\n字符串（String），链表(List)，集合(Set)，散列(Hash)，有序集合(Zset)\\n\\n<strong>特殊结构</strong>\\n\\n基数统计（HyperLogLogs），位存储（Bitmap），地理位置(Geospatial)\\n\\n# Redis 单线程模型\\n\\n单线程模型是说 Redis 中的文件事件处理器，因为文件事件处理器是以单线程模式运行的。\\n\\n<strong>Redis 设计与实现中对于单线程模型的定义</strong>\\n\\n文件处理器以单线程方式运行，但通过 I/O 多路复用程序来监听多个套接字。\\n\\nRedis 基于 Reactor 模式开发了自己的网络事件处理器：这个处理器被称为文件事件处理器（file event handler）。\\n\\n- 文件事件处理器使用 I/O 多路复用（multiplexing）程序来同时监听多个套接字，并根据套接字目前执行的任务来为套接字关联不同的事件处理器。\\n- 当被监听的套接字准备好执行连接应答（accept）、读取（read）、写入（write）、关 闭（close）等操作时，与操作相对应的文件事件就会产生，这时文件事件处理器就会调用套接字之前关联好的事件处理器来处理这些事件。\\n\\n<strong>虽然文件事件处理器以单线程方式运行，但通过使用 I/O 多路复用程序来监听多个套接字</strong>，文件事件处理器既实现了高性能的网络通信模型，又可以很好地与 Redis 服务器中其他同样以单线程方式运行的模块进行对接，这保持了 Redis 内部单线程设计的简单性。\\n\\n## <strong>Redis 文件事件处理器的构成</strong>\\n\\n文件事件处理器（file event handler）主要是包含 4 个部分：\\n\\n- 多个 socket（客户端连接）\\n- IO 多路复用程序（支持多个客户端连接的关键）\\n- 文件事件分派器（将 socket 关联到相应的事件处理器）\\n- 事件处理器（连接应答处理器、命令请求处理器、命令回复处理器）\\n\\n## Redis6.0 引入多线程的原因\\n\\n提高网络 IO 读写性能\\n\\n引入的多线程主要是在网络数据读写时使用，执行命令仍然靠单线程顺序执行，不用担心线程安全问题。\\n\\n默认是关闭的，需要在配置文件中设置才能使用。\\n\\n# Redis 内存管理(数据过期删除机制与内存淘汰机制)\\n![image.png](https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/d7fc3c8db673d219b3053e6eb3b287fc.png)\\n<strong>参考：https://blog.csdn.net/D812359/article/details/121872689</strong>\\n\\n由于 Redis 将数据存在内存中，为了减少内存溢出的风险，数据可以设置过期时间。\\n\\n## Redis 判断数据过期的原理\\n\\nRedis 中有专门的一个过期字典，数据结构是 hash 表来保存数据的过期时间，值是 longlong 类型的整数。\\n\\n当数据过期后，Redis 通过两个删除策略来删除数据。\\n\\n<strong>惰性删除</strong> ：只会在取出 key 的时候才对数据进行过期检查。这样对 CPU 最友好，但是可能会造成太多过期 key 没有被删除。\\n\\n客户端访问 key 值时，Redis 会检查这个 key 值的过期时间，如果过期就立即删除，不返回数据。\\n\\n<strong>定期删除</strong> ： 每隔一段时间抽取一批 key 执行删除过期 key 操作。并且，Redis 底层会通过限制删除操作执行的时长和频率来减少删除操作对 CPU 时间的影响。\\n\\n定期删除根据贪心策略来删除，策略是每次从过期字典随机扫描 20 个 key 值，删除过期的数据，如果过期比例大于 25% 的话还会再抽 20 条数据来扫描。\\n\\n## Redis 内存淘汰机制\\n\\n目前最新的 Redis 有 8 种淘汰机制，在内存不足时启用；\\n\\n默认淘汰机制就是内存满后再有写请求时返回错误；\\n\\n以 volatile 开头的策略是当内存使用量达到阈值时，只会淘汰设置了过期时间的键值对\\n\\n以 allkeys 开头的策略则会对所有键值对进行淘汰判定。\\n\\n具体的淘汰策略有随机，ttl,和 LRU,LFU 算法。\\n\\n<strong>LRU（页面置换算法，最近最少原则）算法，筛选出最不常用和保留时间最久的数据进行淘汰。</strong>\\n\\nLRU 只看数据的访问时间来进行淘汰，所以扫描式单次查询会出现<strong>缓存污染</strong>的问题。\\n\\n<strong>LFU</strong>在 LRU 的基础上统计每个数据的访问次数，先按访问次数进行淘汰，再按保留时间淘汰\\n\\n# Redis 实现分布式锁\",\"articleCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/articles/ed286161507ced27f972308188ece232.png\",\"articleTitle\":\"Redis知识整理\",\"categoryName\":\"数据库文章\",\"isTop\":0,\"originalUrl\":\"\",\"status\":1,\"tagNameList\":[\"Redis\"],\"type\":1}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 17:44:37', NULL);
INSERT INTO `tb_operation_log` VALUES (1093, '页面模块', '新增或修改', '/admin/pages', 'com.wy.blog.controller.PageController.saveOrUpdatePage', '保存或更新页面', '[{\"id\":2,\"pageCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/e171f8df5cfd598ac10689a6584ae6fe.png\",\"pageLabel\":\"archive\",\"pageName\":\"归档\"}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 22:36:52', NULL);
INSERT INTO `tb_operation_log` VALUES (1094, '页面模块', '新增或修改', '/admin/pages', 'com.wy.blog.controller.PageController.saveOrUpdatePage', '保存或更新页面', '[{\"id\":1,\"pageCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/2a9aeb008a4b54c3c2d7c61f1a4821e3.png\",\"pageLabel\":\"home\",\"pageName\":\"首页\"}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 22:37:14', NULL);
INSERT INTO `tb_operation_log` VALUES (1095, '页面模块', '新增或修改', '/admin/pages', 'com.wy.blog.controller.PageController.saveOrUpdatePage', '保存或更新页面', '[{\"id\":3,\"pageCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/ed286161507ced27f972308188ece232.png\",\"pageLabel\":\"category\",\"pageName\":\"分类\"}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 22:37:23', NULL);
INSERT INTO `tb_operation_log` VALUES (1096, '页面模块', '新增或修改', '/admin/pages', 'com.wy.blog.controller.PageController.saveOrUpdatePage', '保存或更新页面', '[{\"id\":4,\"pageCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/a5cbecf61b3f9885ba4c80e549cbf3b6.png\",\"pageLabel\":\"tag\",\"pageName\":\"标签\"}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 22:37:32', NULL);
INSERT INTO `tb_operation_log` VALUES (1097, '页面模块', '新增或修改', '/admin/pages', 'com.wy.blog.controller.PageController.saveOrUpdatePage', '保存或更新页面', '[{\"id\":5,\"pageCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/f43463921f96513ae770487495eb8344.png\",\"pageLabel\":\"album\",\"pageName\":\"相册\"}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 22:38:31', NULL);
INSERT INTO `tb_operation_log` VALUES (1098, '页面模块', '新增或修改', '/admin/pages', 'com.wy.blog.controller.PageController.saveOrUpdatePage', '保存或更新页面', '[{\"id\":6,\"pageCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/89e8ecc587033c3da71937e9a29abd32.png\",\"pageLabel\":\"link\",\"pageName\":\"友链\"}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 22:38:41', NULL);
INSERT INTO `tb_operation_log` VALUES (1099, '页面模块', '新增或修改', '/admin/pages', 'com.wy.blog.controller.PageController.saveOrUpdatePage', '保存或更新页面', '[{\"id\":7,\"pageCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/e171f8df5cfd598ac10689a6584ae6fe.png\",\"pageLabel\":\"about\",\"pageName\":\"关于\"}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 22:38:55', NULL);
INSERT INTO `tb_operation_log` VALUES (1100, '页面模块', '新增或修改', '/admin/pages', 'com.wy.blog.controller.PageController.saveOrUpdatePage', '保存或更新页面', '[{\"id\":8,\"pageCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/364b627a190b54514e40883fbbad2bb4.png\",\"pageLabel\":\"message\",\"pageName\":\"留言\"}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 22:39:09', NULL);
INSERT INTO `tb_operation_log` VALUES (1101, '页面模块', '新增或修改', '/admin/pages', 'com.wy.blog.controller.PageController.saveOrUpdatePage', '保存或更新页面', '[{\"id\":9,\"pageCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/b88f109ba01fb3d78cb9efa8e06d3d83.png\",\"pageLabel\":\"user\",\"pageName\":\"个人中心\"}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 22:39:24', NULL);
INSERT INTO `tb_operation_log` VALUES (1102, '页面模块', '新增或修改', '/admin/pages', 'com.wy.blog.controller.PageController.saveOrUpdatePage', '保存或更新页面', '[{\"id\":10,\"pageCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/ed286161507ced27f972308188ece232.png\",\"pageLabel\":\"articleList\",\"pageName\":\"文章列表\"}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 22:39:39', NULL);
INSERT INTO `tb_operation_log` VALUES (1103, '页面模块', '新增或修改', '/admin/pages', 'com.wy.blog.controller.PageController.saveOrUpdatePage', '保存或更新页面', '[{\"id\":904,\"pageCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/e171f8df5cfd598ac10689a6584ae6fe.png\",\"pageLabel\":\"talk\",\"pageName\":\"说说\"}]', 'POST', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 22:41:14', NULL);
INSERT INTO `tb_operation_log` VALUES (1104, '友链模块', '删除', '/admin/links', 'com.wy.blog.controller.FriendLinkController.deleteFriendLink', '删除友链', '[[26]]', 'DELETE', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 22:41:32', NULL);
INSERT INTO `tb_operation_log` VALUES (1105, '用户信息模块', '修改', '/admin/users/role', 'com.wy.blog.controller.UserInfoController.updateUserRole', '修改用户角色', '[{\"nickname\":\"WY\",\"roleIdList\":[2],\"userInfoId\":1005}]', 'PUT', '{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}', 1, '管理员', '127.0.0.1', '', '2023-02-18 22:43:52', NULL);

-- ----------------------------
-- Table structure for tb_page
-- ----------------------------
DROP TABLE IF EXISTS `tb_page`;
CREATE TABLE `tb_page`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '页面id',
  `page_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '页面名',
  `page_label` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '页面标签',
  `page_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '页面封面',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 905 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '页面' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_page
-- ----------------------------
INSERT INTO `tb_page` VALUES (1, '首页', 'home', 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/2a9aeb008a4b54c3c2d7c61f1a4821e3.png', '2022-08-07 10:32:36', '2023-02-18 22:37:14');
INSERT INTO `tb_page` VALUES (2, '归档', 'archive', 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/e171f8df5cfd598ac10689a6584ae6fe.png', '2022-08-07 10:32:36', '2023-02-18 22:36:52');
INSERT INTO `tb_page` VALUES (3, '分类', 'category', 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/ed286161507ced27f972308188ece232.png', '2022-08-07 10:32:36', '2023-02-18 22:37:23');
INSERT INTO `tb_page` VALUES (4, '标签', 'tag', 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/a5cbecf61b3f9885ba4c80e549cbf3b6.png', '2022-08-07 10:32:36', '2023-02-18 22:37:32');
INSERT INTO `tb_page` VALUES (5, '相册', 'album', 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/f43463921f96513ae770487495eb8344.png', '2022-08-07 10:32:36', '2023-02-18 22:38:31');
INSERT INTO `tb_page` VALUES (6, '友链', 'link', 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/89e8ecc587033c3da71937e9a29abd32.png', '2022-08-07 10:32:36', '2023-02-18 22:38:41');
INSERT INTO `tb_page` VALUES (7, '关于', 'about', 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/e171f8df5cfd598ac10689a6584ae6fe.png', '2022-08-07 10:32:36', '2023-02-18 22:38:54');
INSERT INTO `tb_page` VALUES (8, '留言', 'message', 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/364b627a190b54514e40883fbbad2bb4.png', '2022-08-07 10:32:36', '2023-02-18 22:39:09');
INSERT INTO `tb_page` VALUES (9, '个人中心', 'user', 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/b88f109ba01fb3d78cb9efa8e06d3d83.png', '2022-08-07 10:32:36', '2023-02-18 22:39:24');
INSERT INTO `tb_page` VALUES (10, '文章列表', 'articleList', 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/ed286161507ced27f972308188ece232.png', '2022-08-10 15:36:19', '2023-02-18 22:39:39');
INSERT INTO `tb_page` VALUES (904, '说说', 'talk', 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/e171f8df5cfd598ac10689a6584ae6fe.png', '2022-01-23 00:51:24', '2023-02-18 22:41:14');

-- ----------------------------
-- Table structure for tb_photo
-- ----------------------------
DROP TABLE IF EXISTS `tb_photo`;
CREATE TABLE `tb_photo`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `album_id` int(0) NOT NULL COMMENT '相册id',
  `photo_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '照片名',
  `photo_desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '照片描述',
  `photo_src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '照片地址',
  `is_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '照片' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_photo
-- ----------------------------

-- ----------------------------
-- Table structure for tb_photo_album
-- ----------------------------
DROP TABLE IF EXISTS `tb_photo_album`;
CREATE TABLE `tb_photo_album`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `album_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '相册名',
  `album_desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '相册描述',
  `album_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '相册封面',
  `is_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态值 1公开 2私密',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '相册' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_photo_album
-- ----------------------------

-- ----------------------------
-- Table structure for tb_resource
-- ----------------------------
DROP TABLE IF EXISTS `tb_resource`;
CREATE TABLE `tb_resource`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `resource_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源名',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限路径',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求方式',
  `parent_id` int(0) NULL DEFAULT NULL COMMENT '父权限id',
  `is_anonymous` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否匿名访问 0否 1是',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 288 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_resource
-- ----------------------------
INSERT INTO `tb_resource` VALUES (165, '分类模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (166, '博客信息模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (167, '友链模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (168, '文章模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (169, '日志模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (170, '标签模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (171, '照片模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (172, '用户信息模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (173, '用户账号模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (174, '留言模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (175, '相册模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (176, '菜单模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (177, '角色模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (178, '评论模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (179, '资源模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (180, '页面模块', NULL, NULL, NULL, 0, '2022-08-11 21:04:21', NULL);
INSERT INTO `tb_resource` VALUES (181, '查看博客信息', '/', 'GET', 166, 1, '2022-08-11 21:04:22', '2022-08-11 21:05:29');
INSERT INTO `tb_resource` VALUES (182, '查看关于我信息', '/about', 'GET', 166, 1, '2022-08-11 21:04:22', '2022-08-11 21:05:29');
INSERT INTO `tb_resource` VALUES (183, '查看后台信息', '/admin', 'GET', 166, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (184, '修改关于我信息', '/admin/about', 'PUT', 166, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (185, '查看后台文章', '/admin/articles', 'GET', 168, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (186, '添加或修改文章', '/admin/articles', 'POST', 168, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (187, '恢复或删除文章', '/admin/articles', 'PUT', 168, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (188, '物理删除文章', '/admin/articles', 'DELETE', 168, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (189, '上传文章图片', '/admin/articles/images', 'POST', 168, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (190, '修改文章置顶', '/admin/articles/top', 'PUT', 168, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (191, '根据id查看后台文章', '/admin/articles/*', 'GET', 168, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (192, '查看后台分类列表', '/admin/categories', 'GET', 165, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (193, '添加或修改分类', '/admin/categories', 'POST', 165, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (194, '删除分类', '/admin/categories', 'DELETE', 165, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (195, '搜索文章分类', '/admin/categories/search', 'GET', 165, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (196, '查询后台评论', '/admin/comments', 'GET', 178, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (197, '删除评论', '/admin/comments', 'DELETE', 178, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (198, '审核评论', '/admin/comments/review', 'PUT', 178, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (199, '查看后台友链列表', '/admin/links', 'GET', 167, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (200, '保存或修改友链', '/admin/links', 'POST', 167, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (201, '删除友链', '/admin/links', 'DELETE', 167, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (202, '查看菜单列表', '/admin/menus', 'GET', 176, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (203, '新增或修改菜单', '/admin/menus', 'POST', 176, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (204, '删除菜单', '/admin/menus/*', 'DELETE', 176, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (205, '查看后台留言列表', '/admin/messages', 'GET', 174, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (206, '删除留言', '/admin/messages', 'DELETE', 174, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (207, '审核留言', '/admin/messages/review', 'PUT', 174, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (208, '查看操作日志', '/admin/operation/logs', 'GET', 169, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (209, '删除操作日志', '/admin/operation/logs', 'DELETE', 169, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (210, '获取页面列表', '/admin/pages', 'GET', 180, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (211, '保存或更新页面', '/admin/pages', 'POST', 180, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (212, '删除页面', '/admin/pages/*', 'DELETE', 180, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (213, '根据相册id获取照片列表', '/admin/photos', 'GET', 171, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (214, '保存照片', '/admin/photos', 'POST', 171, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (215, '更新照片信息', '/admin/photos', 'PUT', 171, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (216, '删除照片', '/admin/photos', 'DELETE', 171, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (217, '移动照片相册', '/admin/photos/album', 'PUT', 171, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (218, '查看后台相册列表', '/admin/photos/albums', 'GET', 175, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (219, '保存或更新相册', '/admin/photos/albums', 'POST', 175, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (220, '上传相册封面', '/admin/photos/albums/cover', 'POST', 175, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (221, '获取后台相册列表信息', '/admin/photos/albums/info', 'GET', 175, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (222, '根据id删除相册', '/admin/photos/albums/*', 'DELETE', 175, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (223, '根据id获取后台相册信息', '/admin/photos/albums/*/info', 'GET', 175, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (224, '更新照片删除状态', '/admin/photos/delete', 'PUT', 171, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (225, '查看资源列表', '/admin/resources', 'GET', 179, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (226, '新增或修改资源', '/admin/resources', 'POST', 179, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (227, '导入swagger接口', '/admin/resources/import/swagger', 'GET', 179, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (228, '删除资源', '/admin/resources/*', 'DELETE', 179, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (229, '保存或更新角色', '/admin/role', 'POST', 177, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (230, '查看角色菜单选项', '/admin/role/menus', 'GET', 176, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (231, '查看角色资源选项', '/admin/role/resources', 'GET', 179, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (232, '查询角色列表', '/admin/roles', 'GET', 177, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (233, '删除角色', '/admin/roles', 'DELETE', 177, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (234, '查询后台标签列表', '/admin/tags', 'GET', 170, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (235, '添加或修改标签', '/admin/tags', 'POST', 170, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (236, '删除标签', '/admin/tags', 'DELETE', 170, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (237, '搜索文章标签', '/admin/tags/search', 'GET', 170, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (238, '查看当前用户菜单', '/admin/user/menus', 'GET', 176, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (239, '查询后台用户列表', '/admin/users', 'GET', 173, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (240, '修改用户禁用状态', '/admin/users/disable', 'PUT', 172, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (241, '查看在线用户', '/admin/users/online', 'GET', 172, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (242, '修改管理员密码', '/admin/users/password', 'PUT', 173, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (243, '查询用户角色选项', '/admin/users/role', 'GET', 177, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (244, '修改用户角色', '/admin/users/role', 'PUT', 172, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (245, '下线用户', '/admin/users/*/online', 'DELETE', 172, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (246, '获取网站配置', '/admin/website/config', 'GET', 166, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (247, '更新网站配置', '/admin/website/config', 'PUT', 166, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (248, '根据相册id查看照片列表', '/albums/*/photos', 'GET', 171, 1, '2022-08-11 21:04:22', '2022-08-11 21:06:35');
INSERT INTO `tb_resource` VALUES (249, '查看首页文章', '/articles', 'GET', 168, 1, '2022-08-11 21:04:22', '2022-08-11 21:05:45');
INSERT INTO `tb_resource` VALUES (250, '查看文章归档', '/articles/archives', 'GET', 168, 1, '2022-08-11 21:04:22', '2022-08-11 21:05:47');
INSERT INTO `tb_resource` VALUES (251, '根据条件查询文章', '/articles/condition', 'GET', 168, 1, '2022-08-11 21:04:22', '2022-08-11 21:05:47');
INSERT INTO `tb_resource` VALUES (252, '搜索文章', '/articles/search', 'GET', 168, 1, '2022-08-11 21:04:22', '2022-08-11 21:05:48');
INSERT INTO `tb_resource` VALUES (253, '根据id查看文章', '/articles/*', 'GET', 168, 1, '2022-08-11 21:04:22', '2022-08-11 21:05:49');
INSERT INTO `tb_resource` VALUES (254, '点赞文章', '/articles/*/like', 'POST', 168, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (255, '查看分类列表', '/categories', 'GET', 165, 1, '2022-08-11 21:04:22', '2022-08-11 21:05:26');
INSERT INTO `tb_resource` VALUES (256, '查询评论', '/comments', 'GET', 178, 1, '2022-08-11 21:04:22', '2022-08-11 21:07:33');
INSERT INTO `tb_resource` VALUES (257, '添加评论', '/comments', 'POST', 178, 0, '2022-08-11 21:04:22', '2022-08-11 21:10:05');
INSERT INTO `tb_resource` VALUES (258, '评论点赞', '/comments/*/like', 'POST', 178, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (259, '查询评论下的回复', '/comments/*/replies', 'GET', 178, 1, '2022-08-11 21:04:22', '2022-08-11 21:07:30');
INSERT INTO `tb_resource` VALUES (260, '查看友链列表', '/links', 'GET', 167, 1, '2022-08-11 21:04:22', '2022-08-11 21:05:41');
INSERT INTO `tb_resource` VALUES (261, '查看留言列表', '/messages', 'GET', 174, 1, '2022-08-11 21:04:22', '2022-08-11 21:07:14');
INSERT INTO `tb_resource` VALUES (262, '添加留言', '/messages', 'POST', 174, 1, '2022-08-11 21:04:22', '2022-08-11 21:07:15');
INSERT INTO `tb_resource` VALUES (263, '获取相册列表', '/photos/albums', 'GET', 175, 1, '2022-08-11 21:04:22', '2022-08-11 21:07:20');
INSERT INTO `tb_resource` VALUES (264, '用户注册', '/register', 'POST', 173, 1, '2022-08-11 21:04:22', '2022-08-11 21:07:01');
INSERT INTO `tb_resource` VALUES (265, '查询标签列表', '/tags', 'GET', 170, 1, '2022-08-11 21:04:22', '2022-08-11 21:06:30');
INSERT INTO `tb_resource` VALUES (267, '更新用户头像', '/users/avatar', 'POST', 172, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (268, '发送邮箱验证码', '/users/code', 'GET', 173, 1, '2022-08-11 21:04:22', '2022-08-11 21:07:02');
INSERT INTO `tb_resource` VALUES (269, '绑定用户邮箱', '/users/email', 'POST', 172, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (270, '更新用户信息', '/users/info', 'PUT', 172, 0, '2022-08-11 21:04:22', NULL);
INSERT INTO `tb_resource` VALUES (271, 'qq登录', '/users/oauth/qq', 'POST', 173, 1, '2022-08-11 21:04:22', '2022-08-11 21:07:06');
INSERT INTO `tb_resource` VALUES (272, '微博登录', '/users/oauth/weibo', 'POST', 173, 1, '2022-08-11 21:04:22', '2022-08-11 21:07:06');
INSERT INTO `tb_resource` VALUES (273, '修改密码', '/users/password', 'PUT', 173, 1, '2022-08-11 21:04:22', '2022-08-11 21:07:09');
INSERT INTO `tb_resource` VALUES (274, '上传语音', '/voice', 'POST', 166, 1, '2022-08-11 21:04:22', '2022-08-11 21:05:33');
INSERT INTO `tb_resource` VALUES (275, '上传访客信息', '/report', 'POST', 166, 1, '2022-08-24 00:32:05', '2022-08-24 00:32:07');
INSERT INTO `tb_resource` VALUES (276, '获取用户区域分布', '/admin/users/area', 'GET', 173, 0, '2022-08-24 00:32:35', '2022-09-24 16:25:34');
INSERT INTO `tb_resource` VALUES (278, '说说模块', NULL, NULL, NULL, 0, '2022-01-24 01:29:13', NULL);
INSERT INTO `tb_resource` VALUES (279, '查看首页说说', '/home/talks', 'GET', 278, 1, '2022-01-24 01:29:29', '2022-01-24 01:31:56');
INSERT INTO `tb_resource` VALUES (280, '查看说说列表', '/talks', 'GET', 278, 1, '2022-01-24 01:29:52', '2022-01-24 01:31:56');
INSERT INTO `tb_resource` VALUES (281, '根据id查看说说', '/talks/*', 'GET', 278, 1, '2022-01-24 01:30:10', '2022-01-24 01:31:57');
INSERT INTO `tb_resource` VALUES (282, '点赞说说', '/talks/*/like', 'POST', 278, 0, '2022-01-24 01:30:30', NULL);
INSERT INTO `tb_resource` VALUES (283, '上传说说图片', '/admin/talks/images', 'POST', 278, 0, '2022-01-24 01:30:46', NULL);
INSERT INTO `tb_resource` VALUES (284, '保存或修改说说', '/admin/talks', 'POST', 278, 0, '2022-01-24 01:31:04', NULL);
INSERT INTO `tb_resource` VALUES (285, '删除说说', '/admin/talks', 'DELETE', 278, 0, '2022-01-24 01:31:22', NULL);
INSERT INTO `tb_resource` VALUES (286, '查看后台说说', '/admin/talks', 'GET', 278, 0, '2022-01-24 01:31:38', NULL);
INSERT INTO `tb_resource` VALUES (287, '根据id查看后台说说', '/admin/talks/*', 'GET', 278, 0, '2022-01-24 01:31:53', '2022-01-24 01:33:14');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名',
  `role_label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色描述',
  `is_disable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否禁用  0否 1是',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (1, '管理员', 'admin', 0, '2022-03-22 14:10:21', '2022-01-24 01:32:26');
INSERT INTO `tb_role` VALUES (2, '用户', 'user', 0, '2022-03-22 14:25:25', '2022-01-24 01:32:21');
INSERT INTO `tb_role` VALUES (3, '测试', 'test', 0, '2022-03-22 14:42:23', '2022-01-24 01:32:59');

-- ----------------------------
-- Table structure for tb_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_menu`;
CREATE TABLE `tb_role_menu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(0) NULL DEFAULT NULL COMMENT '角色id',
  `menu_id` int(0) NULL DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2527 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role_menu
-- ----------------------------
INSERT INTO `tb_role_menu` VALUES (1397, 8, 1);
INSERT INTO `tb_role_menu` VALUES (1398, 8, 2);
INSERT INTO `tb_role_menu` VALUES (1399, 8, 6);
INSERT INTO `tb_role_menu` VALUES (1400, 8, 7);
INSERT INTO `tb_role_menu` VALUES (1401, 8, 8);
INSERT INTO `tb_role_menu` VALUES (1402, 8, 9);
INSERT INTO `tb_role_menu` VALUES (1403, 8, 10);
INSERT INTO `tb_role_menu` VALUES (1404, 8, 3);
INSERT INTO `tb_role_menu` VALUES (1405, 8, 11);
INSERT INTO `tb_role_menu` VALUES (1406, 8, 12);
INSERT INTO `tb_role_menu` VALUES (1407, 8, 202);
INSERT INTO `tb_role_menu` VALUES (1408, 8, 13);
INSERT INTO `tb_role_menu` VALUES (1409, 8, 14);
INSERT INTO `tb_role_menu` VALUES (1410, 8, 201);
INSERT INTO `tb_role_menu` VALUES (1411, 8, 4);
INSERT INTO `tb_role_menu` VALUES (1412, 8, 16);
INSERT INTO `tb_role_menu` VALUES (1413, 8, 15);
INSERT INTO `tb_role_menu` VALUES (1414, 8, 17);
INSERT INTO `tb_role_menu` VALUES (1415, 8, 18);
INSERT INTO `tb_role_menu` VALUES (1416, 8, 19);
INSERT INTO `tb_role_menu` VALUES (1417, 8, 20);
INSERT INTO `tb_role_menu` VALUES (1418, 8, 5);
INSERT INTO `tb_role_menu` VALUES (1595, 9, 1);
INSERT INTO `tb_role_menu` VALUES (1596, 9, 2);
INSERT INTO `tb_role_menu` VALUES (1597, 9, 6);
INSERT INTO `tb_role_menu` VALUES (1598, 9, 7);
INSERT INTO `tb_role_menu` VALUES (1599, 9, 8);
INSERT INTO `tb_role_menu` VALUES (1600, 9, 9);
INSERT INTO `tb_role_menu` VALUES (1601, 9, 10);
INSERT INTO `tb_role_menu` VALUES (1602, 9, 3);
INSERT INTO `tb_role_menu` VALUES (1603, 9, 11);
INSERT INTO `tb_role_menu` VALUES (1604, 9, 12);
INSERT INTO `tb_role_menu` VALUES (1605, 9, 202);
INSERT INTO `tb_role_menu` VALUES (1606, 9, 13);
INSERT INTO `tb_role_menu` VALUES (1607, 9, 14);
INSERT INTO `tb_role_menu` VALUES (1608, 9, 201);
INSERT INTO `tb_role_menu` VALUES (1609, 9, 4);
INSERT INTO `tb_role_menu` VALUES (1610, 9, 16);
INSERT INTO `tb_role_menu` VALUES (1611, 9, 15);
INSERT INTO `tb_role_menu` VALUES (1612, 9, 17);
INSERT INTO `tb_role_menu` VALUES (1613, 9, 18);
INSERT INTO `tb_role_menu` VALUES (1614, 9, 19);
INSERT INTO `tb_role_menu` VALUES (1615, 9, 20);
INSERT INTO `tb_role_menu` VALUES (1616, 9, 5);
INSERT INTO `tb_role_menu` VALUES (1639, 13, 2);
INSERT INTO `tb_role_menu` VALUES (1640, 13, 6);
INSERT INTO `tb_role_menu` VALUES (1641, 13, 7);
INSERT INTO `tb_role_menu` VALUES (1642, 13, 8);
INSERT INTO `tb_role_menu` VALUES (1643, 13, 9);
INSERT INTO `tb_role_menu` VALUES (1644, 13, 10);
INSERT INTO `tb_role_menu` VALUES (1645, 13, 3);
INSERT INTO `tb_role_menu` VALUES (1646, 13, 11);
INSERT INTO `tb_role_menu` VALUES (1647, 13, 12);
INSERT INTO `tb_role_menu` VALUES (2366, 14, 1);
INSERT INTO `tb_role_menu` VALUES (2367, 14, 2);
INSERT INTO `tb_role_menu` VALUES (2461, 1, 1);
INSERT INTO `tb_role_menu` VALUES (2462, 1, 2);
INSERT INTO `tb_role_menu` VALUES (2463, 1, 6);
INSERT INTO `tb_role_menu` VALUES (2464, 1, 7);
INSERT INTO `tb_role_menu` VALUES (2465, 1, 8);
INSERT INTO `tb_role_menu` VALUES (2466, 1, 9);
INSERT INTO `tb_role_menu` VALUES (2467, 1, 10);
INSERT INTO `tb_role_menu` VALUES (2468, 1, 3);
INSERT INTO `tb_role_menu` VALUES (2469, 1, 11);
INSERT INTO `tb_role_menu` VALUES (2470, 1, 12);
INSERT INTO `tb_role_menu` VALUES (2471, 1, 202);
INSERT INTO `tb_role_menu` VALUES (2472, 1, 13);
INSERT INTO `tb_role_menu` VALUES (2473, 1, 201);
INSERT INTO `tb_role_menu` VALUES (2474, 1, 213);
INSERT INTO `tb_role_menu` VALUES (2475, 1, 14);
INSERT INTO `tb_role_menu` VALUES (2476, 1, 15);
INSERT INTO `tb_role_menu` VALUES (2477, 1, 16);
INSERT INTO `tb_role_menu` VALUES (2478, 1, 4);
INSERT INTO `tb_role_menu` VALUES (2479, 1, 214);
INSERT INTO `tb_role_menu` VALUES (2480, 1, 209);
INSERT INTO `tb_role_menu` VALUES (2481, 1, 17);
INSERT INTO `tb_role_menu` VALUES (2482, 1, 18);
INSERT INTO `tb_role_menu` VALUES (2483, 1, 205);
INSERT INTO `tb_role_menu` VALUES (2484, 1, 206);
INSERT INTO `tb_role_menu` VALUES (2485, 1, 208);
INSERT INTO `tb_role_menu` VALUES (2486, 1, 210);
INSERT INTO `tb_role_menu` VALUES (2487, 1, 215);
INSERT INTO `tb_role_menu` VALUES (2488, 1, 216);
INSERT INTO `tb_role_menu` VALUES (2489, 1, 217);
INSERT INTO `tb_role_menu` VALUES (2490, 1, 218);
INSERT INTO `tb_role_menu` VALUES (2491, 1, 19);
INSERT INTO `tb_role_menu` VALUES (2492, 1, 20);
INSERT INTO `tb_role_menu` VALUES (2493, 1, 5);
INSERT INTO `tb_role_menu` VALUES (2494, 3, 1);
INSERT INTO `tb_role_menu` VALUES (2495, 3, 2);
INSERT INTO `tb_role_menu` VALUES (2496, 3, 6);
INSERT INTO `tb_role_menu` VALUES (2497, 3, 7);
INSERT INTO `tb_role_menu` VALUES (2498, 3, 8);
INSERT INTO `tb_role_menu` VALUES (2499, 3, 9);
INSERT INTO `tb_role_menu` VALUES (2500, 3, 10);
INSERT INTO `tb_role_menu` VALUES (2501, 3, 3);
INSERT INTO `tb_role_menu` VALUES (2502, 3, 11);
INSERT INTO `tb_role_menu` VALUES (2503, 3, 12);
INSERT INTO `tb_role_menu` VALUES (2504, 3, 202);
INSERT INTO `tb_role_menu` VALUES (2505, 3, 13);
INSERT INTO `tb_role_menu` VALUES (2506, 3, 201);
INSERT INTO `tb_role_menu` VALUES (2507, 3, 213);
INSERT INTO `tb_role_menu` VALUES (2508, 3, 14);
INSERT INTO `tb_role_menu` VALUES (2509, 3, 15);
INSERT INTO `tb_role_menu` VALUES (2510, 3, 16);
INSERT INTO `tb_role_menu` VALUES (2511, 3, 4);
INSERT INTO `tb_role_menu` VALUES (2512, 3, 214);
INSERT INTO `tb_role_menu` VALUES (2513, 3, 209);
INSERT INTO `tb_role_menu` VALUES (2514, 3, 17);
INSERT INTO `tb_role_menu` VALUES (2515, 3, 18);
INSERT INTO `tb_role_menu` VALUES (2516, 3, 205);
INSERT INTO `tb_role_menu` VALUES (2517, 3, 206);
INSERT INTO `tb_role_menu` VALUES (2518, 3, 208);
INSERT INTO `tb_role_menu` VALUES (2519, 3, 210);
INSERT INTO `tb_role_menu` VALUES (2520, 3, 215);
INSERT INTO `tb_role_menu` VALUES (2521, 3, 216);
INSERT INTO `tb_role_menu` VALUES (2522, 3, 217);
INSERT INTO `tb_role_menu` VALUES (2523, 3, 218);
INSERT INTO `tb_role_menu` VALUES (2524, 3, 19);
INSERT INTO `tb_role_menu` VALUES (2525, 3, 20);
INSERT INTO `tb_role_menu` VALUES (2526, 3, 5);

-- ----------------------------
-- Table structure for tb_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_resource`;
CREATE TABLE `tb_role_resource`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `role_id` int(0) NULL DEFAULT NULL COMMENT '角色id',
  `resource_id` int(0) NULL DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4886 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role_resource
-- ----------------------------
INSERT INTO `tb_role_resource` VALUES (4750, 14, 238);
INSERT INTO `tb_role_resource` VALUES (4751, 2, 254);
INSERT INTO `tb_role_resource` VALUES (4752, 2, 267);
INSERT INTO `tb_role_resource` VALUES (4753, 2, 269);
INSERT INTO `tb_role_resource` VALUES (4754, 2, 270);
INSERT INTO `tb_role_resource` VALUES (4755, 2, 257);
INSERT INTO `tb_role_resource` VALUES (4756, 2, 258);
INSERT INTO `tb_role_resource` VALUES (4757, 2, 282);
INSERT INTO `tb_role_resource` VALUES (4758, 1, 165);
INSERT INTO `tb_role_resource` VALUES (4759, 1, 192);
INSERT INTO `tb_role_resource` VALUES (4760, 1, 193);
INSERT INTO `tb_role_resource` VALUES (4761, 1, 194);
INSERT INTO `tb_role_resource` VALUES (4762, 1, 195);
INSERT INTO `tb_role_resource` VALUES (4763, 1, 166);
INSERT INTO `tb_role_resource` VALUES (4764, 1, 183);
INSERT INTO `tb_role_resource` VALUES (4765, 1, 184);
INSERT INTO `tb_role_resource` VALUES (4766, 1, 246);
INSERT INTO `tb_role_resource` VALUES (4767, 1, 247);
INSERT INTO `tb_role_resource` VALUES (4768, 1, 167);
INSERT INTO `tb_role_resource` VALUES (4769, 1, 199);
INSERT INTO `tb_role_resource` VALUES (4770, 1, 200);
INSERT INTO `tb_role_resource` VALUES (4771, 1, 201);
INSERT INTO `tb_role_resource` VALUES (4772, 1, 168);
INSERT INTO `tb_role_resource` VALUES (4773, 1, 185);
INSERT INTO `tb_role_resource` VALUES (4774, 1, 186);
INSERT INTO `tb_role_resource` VALUES (4775, 1, 187);
INSERT INTO `tb_role_resource` VALUES (4776, 1, 188);
INSERT INTO `tb_role_resource` VALUES (4777, 1, 189);
INSERT INTO `tb_role_resource` VALUES (4778, 1, 190);
INSERT INTO `tb_role_resource` VALUES (4779, 1, 191);
INSERT INTO `tb_role_resource` VALUES (4780, 1, 254);
INSERT INTO `tb_role_resource` VALUES (4781, 1, 169);
INSERT INTO `tb_role_resource` VALUES (4782, 1, 208);
INSERT INTO `tb_role_resource` VALUES (4783, 1, 209);
INSERT INTO `tb_role_resource` VALUES (4784, 1, 170);
INSERT INTO `tb_role_resource` VALUES (4785, 1, 234);
INSERT INTO `tb_role_resource` VALUES (4786, 1, 235);
INSERT INTO `tb_role_resource` VALUES (4787, 1, 236);
INSERT INTO `tb_role_resource` VALUES (4788, 1, 237);
INSERT INTO `tb_role_resource` VALUES (4789, 1, 171);
INSERT INTO `tb_role_resource` VALUES (4790, 1, 213);
INSERT INTO `tb_role_resource` VALUES (4791, 1, 214);
INSERT INTO `tb_role_resource` VALUES (4792, 1, 215);
INSERT INTO `tb_role_resource` VALUES (4793, 1, 216);
INSERT INTO `tb_role_resource` VALUES (4794, 1, 217);
INSERT INTO `tb_role_resource` VALUES (4795, 1, 224);
INSERT INTO `tb_role_resource` VALUES (4796, 1, 172);
INSERT INTO `tb_role_resource` VALUES (4797, 1, 240);
INSERT INTO `tb_role_resource` VALUES (4798, 1, 241);
INSERT INTO `tb_role_resource` VALUES (4799, 1, 244);
INSERT INTO `tb_role_resource` VALUES (4800, 1, 245);
INSERT INTO `tb_role_resource` VALUES (4801, 1, 267);
INSERT INTO `tb_role_resource` VALUES (4802, 1, 269);
INSERT INTO `tb_role_resource` VALUES (4803, 1, 270);
INSERT INTO `tb_role_resource` VALUES (4804, 1, 173);
INSERT INTO `tb_role_resource` VALUES (4805, 1, 239);
INSERT INTO `tb_role_resource` VALUES (4806, 1, 242);
INSERT INTO `tb_role_resource` VALUES (4807, 1, 276);
INSERT INTO `tb_role_resource` VALUES (4808, 1, 174);
INSERT INTO `tb_role_resource` VALUES (4809, 1, 205);
INSERT INTO `tb_role_resource` VALUES (4810, 1, 206);
INSERT INTO `tb_role_resource` VALUES (4811, 1, 207);
INSERT INTO `tb_role_resource` VALUES (4812, 1, 175);
INSERT INTO `tb_role_resource` VALUES (4813, 1, 218);
INSERT INTO `tb_role_resource` VALUES (4814, 1, 219);
INSERT INTO `tb_role_resource` VALUES (4815, 1, 220);
INSERT INTO `tb_role_resource` VALUES (4816, 1, 221);
INSERT INTO `tb_role_resource` VALUES (4817, 1, 222);
INSERT INTO `tb_role_resource` VALUES (4818, 1, 223);
INSERT INTO `tb_role_resource` VALUES (4819, 1, 176);
INSERT INTO `tb_role_resource` VALUES (4820, 1, 202);
INSERT INTO `tb_role_resource` VALUES (4821, 1, 203);
INSERT INTO `tb_role_resource` VALUES (4822, 1, 204);
INSERT INTO `tb_role_resource` VALUES (4823, 1, 230);
INSERT INTO `tb_role_resource` VALUES (4824, 1, 238);
INSERT INTO `tb_role_resource` VALUES (4825, 1, 177);
INSERT INTO `tb_role_resource` VALUES (4826, 1, 229);
INSERT INTO `tb_role_resource` VALUES (4827, 1, 232);
INSERT INTO `tb_role_resource` VALUES (4828, 1, 233);
INSERT INTO `tb_role_resource` VALUES (4829, 1, 243);
INSERT INTO `tb_role_resource` VALUES (4830, 1, 178);
INSERT INTO `tb_role_resource` VALUES (4831, 1, 196);
INSERT INTO `tb_role_resource` VALUES (4832, 1, 197);
INSERT INTO `tb_role_resource` VALUES (4833, 1, 198);
INSERT INTO `tb_role_resource` VALUES (4834, 1, 257);
INSERT INTO `tb_role_resource` VALUES (4835, 1, 258);
INSERT INTO `tb_role_resource` VALUES (4836, 1, 179);
INSERT INTO `tb_role_resource` VALUES (4837, 1, 225);
INSERT INTO `tb_role_resource` VALUES (4838, 1, 226);
INSERT INTO `tb_role_resource` VALUES (4839, 1, 227);
INSERT INTO `tb_role_resource` VALUES (4840, 1, 228);
INSERT INTO `tb_role_resource` VALUES (4841, 1, 231);
INSERT INTO `tb_role_resource` VALUES (4842, 1, 180);
INSERT INTO `tb_role_resource` VALUES (4843, 1, 210);
INSERT INTO `tb_role_resource` VALUES (4844, 1, 211);
INSERT INTO `tb_role_resource` VALUES (4845, 1, 212);
INSERT INTO `tb_role_resource` VALUES (4846, 1, 278);
INSERT INTO `tb_role_resource` VALUES (4847, 1, 282);
INSERT INTO `tb_role_resource` VALUES (4848, 1, 283);
INSERT INTO `tb_role_resource` VALUES (4849, 1, 284);
INSERT INTO `tb_role_resource` VALUES (4850, 1, 285);
INSERT INTO `tb_role_resource` VALUES (4851, 1, 286);
INSERT INTO `tb_role_resource` VALUES (4852, 1, 287);
INSERT INTO `tb_role_resource` VALUES (4853, 3, 192);
INSERT INTO `tb_role_resource` VALUES (4854, 3, 195);
INSERT INTO `tb_role_resource` VALUES (4855, 3, 183);
INSERT INTO `tb_role_resource` VALUES (4856, 3, 246);
INSERT INTO `tb_role_resource` VALUES (4857, 3, 199);
INSERT INTO `tb_role_resource` VALUES (4858, 3, 185);
INSERT INTO `tb_role_resource` VALUES (4859, 3, 191);
INSERT INTO `tb_role_resource` VALUES (4860, 3, 254);
INSERT INTO `tb_role_resource` VALUES (4861, 3, 208);
INSERT INTO `tb_role_resource` VALUES (4862, 3, 234);
INSERT INTO `tb_role_resource` VALUES (4863, 3, 237);
INSERT INTO `tb_role_resource` VALUES (4864, 3, 213);
INSERT INTO `tb_role_resource` VALUES (4865, 3, 241);
INSERT INTO `tb_role_resource` VALUES (4866, 3, 239);
INSERT INTO `tb_role_resource` VALUES (4867, 3, 276);
INSERT INTO `tb_role_resource` VALUES (4868, 3, 205);
INSERT INTO `tb_role_resource` VALUES (4869, 3, 218);
INSERT INTO `tb_role_resource` VALUES (4870, 3, 221);
INSERT INTO `tb_role_resource` VALUES (4871, 3, 223);
INSERT INTO `tb_role_resource` VALUES (4872, 3, 202);
INSERT INTO `tb_role_resource` VALUES (4873, 3, 230);
INSERT INTO `tb_role_resource` VALUES (4874, 3, 238);
INSERT INTO `tb_role_resource` VALUES (4875, 3, 232);
INSERT INTO `tb_role_resource` VALUES (4876, 3, 243);
INSERT INTO `tb_role_resource` VALUES (4877, 3, 196);
INSERT INTO `tb_role_resource` VALUES (4878, 3, 257);
INSERT INTO `tb_role_resource` VALUES (4879, 3, 258);
INSERT INTO `tb_role_resource` VALUES (4880, 3, 225);
INSERT INTO `tb_role_resource` VALUES (4881, 3, 231);
INSERT INTO `tb_role_resource` VALUES (4882, 3, 210);
INSERT INTO `tb_role_resource` VALUES (4883, 3, 282);
INSERT INTO `tb_role_resource` VALUES (4884, 3, 286);
INSERT INTO `tb_role_resource` VALUES (4885, 3, 287);

-- ----------------------------
-- Table structure for tb_tag
-- ----------------------------
DROP TABLE IF EXISTS `tb_tag`;
CREATE TABLE `tb_tag`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标签名',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_tag
-- ----------------------------
INSERT INTO `tb_tag` VALUES (29, '测试标签', '2022-01-24 23:33:57', NULL);
INSERT INTO `tb_tag` VALUES (30, 'Mybatis', '2023-02-18 17:11:03', NULL);
INSERT INTO `tb_tag` VALUES (31, 'ORM框架', '2023-02-18 17:11:03', NULL);
INSERT INTO `tb_tag` VALUES (32, '知识速查', '2023-02-18 17:11:03', NULL);
INSERT INTO `tb_tag` VALUES (33, 'Maven', '2023-02-18 17:17:28', NULL);
INSERT INTO `tb_tag` VALUES (34, '实习随记', '2023-02-18 17:17:28', NULL);
INSERT INTO `tb_tag` VALUES (35, '问题汇总', '2023-02-18 17:17:28', NULL);
INSERT INTO `tb_tag` VALUES (36, 'SQL语言', '2023-02-18 17:22:54', NULL);
INSERT INTO `tb_tag` VALUES (37, 'MySQL', '2023-02-18 17:22:54', NULL);
INSERT INTO `tb_tag` VALUES (38, 'JAVA', '2023-02-18 17:37:28', NULL);
INSERT INTO `tb_tag` VALUES (39, '并发多线程', '2023-02-18 17:40:15', NULL);
INSERT INTO `tb_tag` VALUES (40, 'Redis', '2023-02-18 17:44:37', NULL);

-- ----------------------------
-- Table structure for tb_talk
-- ----------------------------
DROP TABLE IF EXISTS `tb_talk`;
CREATE TABLE `tb_talk`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '说说id',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '说说内容',
  `images` varchar(2500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片',
  `is_top` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否置顶',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 1.公开 2.私密',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_talk
-- ----------------------------
INSERT INTO `tb_talk` VALUES (49, 1, '测试说说<img src=\"https://static.talkxj.com/emoji/goutou.jpg\" width=\"24\" height=\"24\" alt=\"[狗头]\" style=\"margin: 0 1px;vertical-align: text-bottom\">', NULL, 0, 1, '2022-01-24 23:34:59', NULL);

-- ----------------------------
-- Table structure for tb_unique_view
-- ----------------------------
DROP TABLE IF EXISTS `tb_unique_view`;
CREATE TABLE `tb_unique_view`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `views_count` int(0) NOT NULL COMMENT '访问量',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 534 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_unique_view
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user_auth
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_auth`;
CREATE TABLE `tb_user_auth`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_info_id` int(0) NOT NULL COMMENT '用户信息id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `login_type` tinyint(1) NOT NULL COMMENT '登录类型',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户登录ip',
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'ip来源',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '上次登录时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 996 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user_auth
-- ----------------------------
INSERT INTO `tb_user_auth` VALUES (1, 1, 'admin@qq.com', '$2a$10$AkxkZaqcxEXdiNE1nrgW1.ms3aS9C5ImXMf8swkWUJuFGMqDl.TPW', 1, '127.0.0.1', '', '2022-08-12 15:43:18', '2023-02-18 22:36:17', '2023-02-18 22:36:17');
INSERT INTO `tb_user_auth` VALUES (995, 1005, 'ifinetoo@qq.com', '$2a$10$YA.DhLB2kOGD0DMc3WEPL..RZtoPwFioD3zoafyDXOnuW/tJwcJ7u', 1, '127.0.0.1', '', '2023-02-08 10:20:34', '2023-02-18 22:44:32', '2023-02-18 22:44:32');

-- ----------------------------
-- Table structure for tb_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_info`;
CREATE TABLE `tb_user_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱号',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `avatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户简介',
  `web_site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '个人网站',
  `is_disable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否禁用',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1006 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user_info
-- ----------------------------
INSERT INTO `tb_user_info` VALUES (1, 'admin@qq.com', '管理员', 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/avatar/6a0606c4f411d3bf8c6055453aca46ca.png', 'admin@qq.com', NULL, 0, '2022-08-12 15:43:17', '2023-02-08 10:25:09');
INSERT INTO `tb_user_info` VALUES (1005, 'ifinetoo@qq.com', 'WY', 'https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/avatar/9344e2873728d46043bb9f9be7444314.jpg', NULL, NULL, 0, '2023-02-08 10:20:34', '2023-02-18 22:43:52');

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `role_id` int(0) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1005 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES (1001, 1, 1);
INSERT INTO `tb_user_role` VALUES (1005, 1005, 2);

-- ----------------------------
-- Table structure for tb_website_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_website_config`;
CREATE TABLE `tb_website_config`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `config` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '配置信息',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_website_config
-- ----------------------------
INSERT INTO `tb_website_config` VALUES (1, '{\"alipayQRCode\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/608f584481efdad3978e5af4674a237d.jpg\",\"articleCover\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/1517de3d45464bc610943e36bcdd267f.jpg\",\"gitee\":\"https://gitee.com/wyowo\",\"github\":\"https://github.com/MaidSG\",\"isChatRoom\":1,\"isCommentReview\":0,\"isEmailNotice\":1,\"isMessageReview\":0,\"isMusicPlayer\":1,\"isReward\":1,\"qq\":\"512256763\",\"socialLoginList\":[\"qq\"],\"socialUrlList\":[\"qq\",\"github\",\"gitee\",\"wechat\"],\"touristAvatar\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/f96f1089fc5528ef978ab365595d145f.png\",\"userAvatar\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/f96f1089fc5528ef978ab365595d145f.png\",\"websiteAuthor\":\"WY\",\"websiteAvatar\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/092f7737d98dec130bfc83f715674508.jpg\",\"websiteCreateTime\":\"2020-12-01\",\"websiteIntro\":\"人言向西可剃度，向东可寻欢，只是山野笨拙，我也笨拙\",\"websiteName\":\"阿昱的博客\",\"websiteNotice\":\"\",\"websiteRecordNo\":\"备案号\",\"websocketUrl\":\"ws://127.0.0.1:8080/websocket\",\"wechat\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/d85c2f06b57c1b763d3296df344bd5f.jpg\",\"weiXinQRCode\":\"https://aurora-1312972600.cos.ap-chengdu.myqcloud.com/config/d55347b3b363e19e3a3220276a006a61.png\"}', '2022-08-09 19:37:30', '2023-02-18 22:24:08');

SET FOREIGN_KEY_CHECKS = 1;
