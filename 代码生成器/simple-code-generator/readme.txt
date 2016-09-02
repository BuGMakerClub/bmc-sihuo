简要说明
————————————————————————————————————————————————————————————————
1.技术点：rapid-generator/freemarker

2.功能点：根据freemarker模板，生成相应的代码到指定目录（现在的模板主要用于生成JPA的model和repository）

3.模板：生成JPA的模板在templates/jpa下；
	特殊的可以自己新建模板，在other_template_samples下有一些模板参考；
	模板路径下可以引用环境变量: ${env.JAVA_HOME} or System.properties: ${user.home},property之间也可以相互引用


使用说明
————————————————————————————————————————————————————————————————
1.	修改resources/generator.xml中的以下配置：

	①jdbc配置
	<entry key="jdbc.url">jdbc:mysql://localhost:3306/sms?useUnicode=true&amp;characterEncoding=UTF-8</entry>
	<entry key="jdbc.driver">com.mysql.jdbc.Driver</entry>
	<entry key="jdbc.username">root</entry>
	<entry key="jdbc.password">root</entry>
   
	②修改指定输出地址，默认当前项目根目录下的output文件夹中
    <entry key="outRoot">output</entry>
    
	③修改需要移除的表明前缀，没有前缀可不设置，注意多个用逗号隔开
	<entry key="tableRemovePrefixes">prefixe1,prefixe2</entry>

2.	修改resources/generatorConfig.xml

	①修改模块名称 和 模块对应的代码模板路径(模板路径为jpa，默认不修改)
	<module name="sms" templateRoot="templates/jpa">
	
	②修改属性，添加该模块特有的属性，多个属性换行分隔
	<properties>
		propertyName1=value1
		propertyName2=value2
		...
	</properties>
	
	③修改该模块下的表名，多个属性换行分隔
	<tables>
		tableName1
		tableName2
		...
	</tables>
	
3.	在eclipse中执行

	a.项目引入eclipse中，
	b.然后直接执行com.pateo.code.generator.run.GeneratorRun.java中的main方法

4.	代码生成目录在当前项目的output下
	

原作者
————————————————————————————————————————————————————————————————
作者GitHub：https://github.com/badqiu
作者在线文档：https://code.google.com/archive/p/rapid-framework/wikis/rapid_generator.wiki
