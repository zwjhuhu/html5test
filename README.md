# 这是一个html5的示例的项目，主要是当初的一个预研计划

> 顺便在配置服务的时候顺便使用了tengine和tomcat的集群的配置，
> 这时在web.xml里面需要添加`<distributable/>`标记
> 在设计的时候使用redis存储代替session使用，所以不再需要tomcat集群了
> 登陆页面使用tengine的ssl配置重定向访问。

---
* tengine_conf tengine相关配置文件
* tomcat_conf tomcat相关配置文件
* redis_conf redis相关配置文件
* script 启动脚本文件