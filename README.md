# Chengli-network-personnel-management-system
2020年12月-2021年1月实训项目

# ***一.项目名称***
成理网络人事管理系统(Chengli-network-personnel-management-system)

***

# ***二.项目背景***
>如今各行各业竞争十分激烈，优胜劣汰。我国各行各业都齐头并进,竞争发展。由于信息化技术的快速发展，企业要想提高生产力和创新能力，必须加强对人力资源的研究、配置和投资,以此提升整个企业的人力资源优势。此外，为了留住人才,吸纳人才,将人力及人才资源的优势发挥更好，使企业更好、更快速的发展,必须改进和提升对自身的管理能力。
>
>由于企业员工管理相对复杂,所以给员工管理人员带来了极大的不便。企业员工管理首先要建立人才信息库,然后再根据人才库进行管理、查询等一系列的工作,因此使企业在管理上面能够信息化、科学化、标准化和网络化。本系统是通过Java技术、mysql数据库进行开发的,本系统主要就是小型企业而开发的员工管理系统,开发本系统就是为了能够提高员工管理的工作效率和企业的管理效率。本文主要研究的企业员工管理系统,首先介绍了企业员工管理的选题背景和研究的意义;然后对系统进行需求分析,在需求分析阶段介绍系统的业务需求、非功能性需求、功能用例分析和可行性研究等内容;在系统设计过程中详细介绍了系统的功能模块、业务流程和系统数据库设计等内容;在系统实现与测试方面主要介绍了系统的界面实现,最后再进行了系统的测试。
>
>随着我国现代经济的高速发展,各种企业的不断崛起,企业员工数量的不断增加、分工的不断细化,企业在员工管理方面对需求越来越大,伴随着计算机的迅速发展和广泛使用,企业员工信息管理转向电子化成为必然。实现员工信息管理系统的电子化、网络化,对企业的规范化、制度化、科学化管理具有突出意义。越来越多的企业开始注重对员工管理系统的维护与升级,以此为背景,本文将对企业员工管理系统的设计与升级进行简要探讨。

***

# ***三.项目内容***
>本次课题是开发一个小型企业员工管理系统的设计与开发，其主要功能模块如下所示：*用户管理、部门管理、职位管理、员工管理、招聘管理、培训管理、公告管理、下载中心，系统管理*八大管理模块，从各个方面记录、整合企业人员的信息。

1.用户管理：本模块的主要分为用户查询和添加用户，用户查询可以搜索，删除用户，也可以更改用户信息。添加用户可以增添公司新成员。使用者为管理员，可以对系统的部门和人员信息情况进行管理，有着最高的权限。可以调整普通员工权限，增加或解除某项权利。

2.部门管理：本模块的主要分为部门查询和添加部门，主要是对所有部门的信息进行管理，包括部门查询，删除，添加，修改部门机构的相关职能信息，完成对企业部门资源的整合工作，统一管理各个部门的信息，调度各部门人员及管理各部门的人员流动。

3.职位管理：本模块的主要分为职位查询和添加职位，用来储存各职务信息。

4.员工管理：管理员可以增加员工信息，可以对员工的基本信息进行查询，必要时可对员工的一些基本信息进行删除、修改。

5.招聘管理：招聘是企业员工管理体系中的极为的重要环节，企业分布招聘岗位，招聘企业所需的人才。这是关键且十分重要的功能。

6.培训管理：主要是对公司发布的培训方向及技能信息的管理和对所有在职员工进行过培训的信息进行管理，关系到每个员工的成长计划，及促进人才的培养。

7.公告管理：本模块主要是公司发布一些公告，以便公司员工的查询。

8.下载中心：本模块主要是管理员可以上传下载公司的文件，也可以删除文件，普通员工只能下载文件。
  - 管理员登录：系统登录功能是系统中不可或缺的重要功能，从安全性方面考虑，企业员工管理系统设计有用户切换功能。

***

# ***四.需求分析图***
![图片alt](https://pic.imgdb.cn/item/61e13aad2ab3f51d914c16c2.jpg "1.系统主要类图")
![图片alt](https://pic.imgdb.cn/item/61e139bb2ab3f51d914b0aac.jpg "2.登录时序图")
![图片alt](https://pic.imgdb.cn/item/61e13a252ab3f51d914b8f18.jpg "3.用户修改时序图")

***

# ***五.概要设计图***
![图片alt](https://pic.imgdb.cn/item/61e13b552ab3f51d914caab0.jpg "4.系统模块图（管理员）")
![图片alt](https://pic.imgdb.cn/item/61e13ba42ab3f51d914cea3a.jpg "5.内部接口图")
![图片alt](https://pic.imgdb.cn/item/61e13bc92ab3f51d914d27ea.jpg "6.登录界面流程图")
![图片alt](https://pic.imgdb.cn/item/61e13bec2ab3f51d914d4f45.jpg "7.员工管理流程图")
![图片alt](https://pic.imgdb.cn/item/61e13c122ab3f51d914d8e9f.jpg "8.账号管理流程图")

***

# ***六.数据库记录***
## 1.部门表(departments)
    CREATE TABLE `departments` (
      `number` varchar(20) NOT NULL,
      `name` varchar(20) NOT NULL,
      `manager` varchar(20) NOT NULL,
      `telephone` varchar(20) DEFAULT NULL,
      PRIMARY KEY (`number`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门表';

## 2.员工信息表(userinfo)
    CREATE TABLE `userinfo` (
      `usernumber` varchar(10) NOT NULL,
      `name` varchar(20) DEFAULT NULL,
      `age` varchar(10) DEFAULT NULL,
      `sex` varchar(10) DEFAULT NULL,
      `card` varchar(20) DEFAULT NULL,
      `birthday` date DEFAULT NULL,
      `nation` varchar(10) DEFAULT NULL,
      `wedding` varchar(10) DEFAULT NULL,
      `phonenumber` varchar(20) DEFAULT NULL,
      `address` varchar(50) DEFAULT NULL,
      `school` varchar(50) DEFAULT NULL,
      `education` varchar(50) DEFAULT NULL,
      `worktime` date DEFAULT NULL,
      `depnumber` varchar(50) DEFAULT NULL,
      PRIMARY KEY (`usernumber`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工信息表';
  
## 3.员工薪资表(pay)
    CREATE TABLE `pay` (
      `account` varchar(20) NOT NULL,
      `username` varchar(20) NOT NULL,
      `paytime` date NOT NULL,
      `basewage` varchar(20) NOT NULL,
      `paywage` varchar(20) NOT NULL,
      `booleanpay` varchar(20) NOT NULL,
      PRIMARY KEY (`account`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

## 4.薪资发放表(wage)
    CREATE TABLE `wage` (
      `account` varchar(20) NOT NULL,
      `username` varchar(20) NOT NULL,
      `departments` varchar(20) NOT NULL,
      `bsalary` varchar(20) NOT NULL,
      `premium` varchar(20) NOT NULL,
      PRIMARY KEY (`account`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
## 5.应聘信息表(employee)
    CREATE TABLE `employee` (
      `eid` varchar(20) NOT NULL,
      `ename` varchar(20) NOT NULL,
      `eage` varchar(20) NOT NULL,
      `education` varchar(20) NOT NULL,
      `job` varchar(20) NOT NULL,
      `sendtime` date NOT NULL,
      PRIMARY KEY (`eid`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
## 6.培训计划表(train)
    CREATE TABLE `train` (
      `tid` varchar(20) NOT NULL,
      `ttitle` varchar(20) NOT NULL,
      `name` varchar(20) NOT NULL,
      `purpose` varchar(20) NOT NULL,
      `time` date NOT NULL,
      `address` varchar(20) NOT NULL,
      `participants` varchar(20) NOT NULL,
      PRIMARY KEY (`tid`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
## 7.账号管理表(user)
    CREATE TABLE `user` (
      `account` varchar(16) NOT NULL COMMENT '账号也是员工编号',
      `password` varchar(16) NOT NULL COMMENT '密码',
      `authority` int(1) NOT NULL DEFAULT '0' COMMENT '权限',
      `username` varchar(25) NOT NULL COMMENT '姓名',
      `depNumber` varchar(20) NOT NULL COMMENT '部门编号',
      PRIMARY KEY (`account`),
      UNIQUE KEY `username` (`username`,`account`),
      KEY `FK_user_departments` (`depNumber`),
      CONSTRAINT `user_ibfk_1` FOREIGN KEY (`depNumber`) REFERENCES `departments` (`number`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
![图片alt](https://pic.imgdb.cn/item/61e13da02ab3f51d914ee3dd.jpg "数据库ER图")

***

# ***七.最终效果展示***
![图片alt](https://pic.imgdb.cn/item/61e13e0d2ab3f51d914f3568.jpg "登录页面")
![图片alt](https://pic.imgdb.cn/item/61e13e2f2ab3f51d914f4cd9.jpg "系统管理界面")
![图片alt](https://pic.imgdb.cn/item/61e13e612ab3f51d914f83da.jpg "账号添加")
![图片alt](https://pic.imgdb.cn/item/61e13e822ab3f51d914f9ef2.jpg "部门信息")
![图片alt](https://pic.imgdb.cn/item/61e13ea12ab3f51d914fbbe9.jpg "部门添加")
![图片alt](https://pic.imgdb.cn/item/61e13eba2ab3f51d914fd16d.jpg "员工信息")
![图片alt](https://pic.imgdb.cn/item/61e13ece2ab3f51d914fe13e.jpg "员工薪资")
![图片alt](https://pic.imgdb.cn/item/61e13eea2ab3f51d91502036.jpg "薪资发放")
![图片alt](https://pic.imgdb.cn/item/61e13f0c2ab3f51d91504b97.jpg "应聘信息")
![图片alt](https://pic.imgdb.cn/item/61e13f492ab3f51d91507be8.jpg "培训计划")
[![78FEtS.png](https://s4.ax1x.com/2022/01/14/78FEtS.png)](https://imgtu.com/i/78FEtS)
[![78FDAK.png](https://s4.ax1x.com/2022/01/14/78FDAK.png)](https://imgtu.com/i/78FDAK)
[![78kEHx.png](https://s4.ax1x.com/2022/01/14/78kEHx.png)](https://imgtu.com/i/78kEHx)
[![78km4O.png](https://s4.ax1x.com/2022/01/14/78km4O.png)](https://imgtu.com/i/78km4O)
