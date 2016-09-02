简要说明
————————————————————————————————————————————————————————————————
rapid/freemarker

使用说明
————————————————————————————————————————————————————————————————
1.	修改generator.xml中的以下配置：

	①jdbc配置
	<entry key="jdbc.url">jdbc:mysql://localhost:3306/sms?useUnicode=true&amp;characterEncoding=UTF-8</entry>
	<entry key="jdbc.driver">com.mysql.jdbc.Driver</entry>
	<entry key="jdbc.username">root</entry>
	<entry key="jdbc.password">root</entry>
   
	②修改指定输出地址，默认和当前项目平级
    <entry key="outRoot">../Coder-tools-Output</entry>
    
	③修改需要移除的表明前缀，没有前缀可不设置，注意多个用逗号隔开
	<entry key="tableRemovePrefixes">prefixe1,prefixe2</entry>

2.	修改generatorConfig.xml

	①修改模块名称 和 模块对应的代码模板路径
	<module name="sms" templateRoot="templates/jpa">
	
	②修改属性，添加该模块特有的属性，多个属性换行分隔
	<properties></properties>
	
	③修改该模块下的表名，多个属性换行分隔
	<tables></tables>
	
3.	在eclipse中执行

	a.项目引入eclipse中，
	b.然后直接执行cn.org.rapid_framework.generator.app.CodeGenerator.java中的main方法

4.	代码生成目录
	在
	<entry key="outRoot">../Coder-tools-Output</entry>
	中的
	../Coder-tools-Output 下
	

原作者
————————————————————————————————————————————————————————————————
作者GitHub：https://github.com/badqiu
作者在线文档：https://code.google.com/archive/p/rapid-framework/wikis/rapid_generator.wiki
