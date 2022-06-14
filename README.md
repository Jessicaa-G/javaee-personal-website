# Personal Website
jsp/servlet/MyBatis

## Content
1. 用于展示的三个子页面
	1. 首页：照片滚动播放、照片墙、个人及家乡的概要介绍、留言板（后端可管理）index.jsp （实现登出功能logout.jsp）
	2. 自我介绍页：个人头像、基本信息、技能（后端可管理）、荣誉（后端可管理）selfintro.jsp
	3. 家乡介绍页：总体介绍、景色照片、美食介绍（后端可管理）、习俗介绍（后端可管理）hometownintro.jsp
	
2. 登录页面 login.jsp

3. 注册页面 register.jsp

4. 管理员登录页面 admin_login.jsp

5. 管理页面
	1. 管理首页：显示各管理项的总数（如用户总数）admin_jsp
	2. 用户管理页：显示所有用户信息、增加一个用户、删除一个用户、更改一个用户的密码 admin_user.jsp
	3. 技能管理页：显示所有技能信息、增加一个技能、删除一个技能、更改一个技能的熟练度 admin_skill.jsp
	4. 荣誉管理页：显示所有荣誉信息、增加一个荣誉、删除一个荣誉、更改一个荣誉的奖项、获得年份 admin_award.jsp
	5. 美食管理页：显示所有美食信息、增加一个美食、删除一个美食、更改一个美食的介绍 admin_food.jsp
	6. 习俗管理页：显示所有习俗信息、增加一个习俗、删除一个习俗、更改一个习俗的介绍 admin_custom.jsp
	7. 留言管理页：显示所有留言信息、对某个留言进行回复、删除一条留言、更改一条回复 admin_message.jsp
	
## Deploy
  * sqlserver新建数据库：Website
  * 配置jessica.website.utils/mybatis-config.xml，修改配置信息，连接自己的数据库
  * 配置Tomcat服务器 
  * localhost: xxx/index/ 访问
	
## Database Design
<img width="555" alt="db1" src="https://user-images.githubusercontent.com/67884721/129516572-8042779e-6442-401d-9096-d790e7523275.JPG">
<img width="555" alt="db2" src="https://user-images.githubusercontent.com/67884721/129516590-5b9b524d-9a71-4ac6-b3d7-7f5f87cdf199.JPG">
