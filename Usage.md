# 1. PageHelper

[Pagehelper 官网](https://pagehelper.github.io/)

[Pagehelper 文档](https://github.com/pagehelper/Mybatis-PageHelper/blob/master/wikis/zh/HowToUse.md)

## 使用方法

### 1. 引入分页插件

#### 使用 Maven
```xml  
<dependency>
    <groupId>com.github.pagehelper</groupId>
    <artifactId>pagehelper</artifactId>
    <version>最新版本</version>
</dependency>
```

### 2. 在 spring-mybatis.xml 中配置拦截器插件
```xml
<bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
  <!-- 注意其他配置 -->
  <property name="plugins">
    <array>
      <bean class="com.github.pagehelper.PageInterceptor">
        <property name="properties">
          <!--使用下面的方式配置参数，一行配置一个 -->
          <value>
            params=value1
            <!--
                helperDialect=mysql
                pageSizeZero=true
                reasonable=true
                offsetAsPageNum=true
                supportMethodsArguments=true
                returnPageInfo=true
                rowBoundsWithCount=true
            -->
          </value>
        </property>
      </bean>
    </array>
  </property>
</bean>
```

### 3. 在 controller 使用 pagehelper

```java
@RequestMapping("/allBook")
public String list(Model model,
                   @RequestParam(name = "startPage", defaultValue = "1")
                   Integer startPage,
                   @RequestParam(name = "pageSize", defaultValue = "5") 
                   Integer pageSize) {
    PageHelper.startPage(startPage, pageSize);
    List<Books> booksList = booksService.queryAllBook();
    PageInfo pageInfo = new PageInfo(booksList);
    model.addAttribute("pageInfo", pageInfo);
    return "allBook";
}
```

### 4. 前端页面使用 pagehelper

```jsp
<nav aria-label="Page navigation" style="text-align: center">
    <ul class="pagination" >
        <li>
            <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageInfo.navigateFirstPage}">首页</a>
        </li>
        <li>
            <c:if test="${pageInfo.hasPreviousPage}">
                <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageInfo.pageNum-1}"
                   aria-label="Previous">
                    <span aria-hidden="true">上一页</span>
                </a>
            </c:if>
        </li>
        <li>
            <c:forEach items="${pageInfo.navigatepageNums}" var="pageNum">
                <c:if test="${pageNum == pageInfo.pageNum}">
                    <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageNum}">${pageNum}</a>
                </c:if>
            </c:forEach>
        </li>
        <li>
            <c:if test="${pageInfo.hasNextPage}">
                <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageInfo.pageNum+1}"
                   aria-label="Next">
                    <span aria-hidden="true">下一页</span>
                </a>
            </c:if>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageInfo.navigateLastPage}">尾页</a>
        </li>
    </ul>
</nav>
```


# 2. SQL 脚本
```sql
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

INSERT INTO `books` VALUES (24, '挪威的森林', 35);
INSERT INTO `books` VALUES (25, '寻羊冒险记', 23);
INSERT INTO `books` VALUES (26, '解忧杂货店', 21);
INSERT INTO `books` VALUES (27, '时间简史', 33);
INSERT INTO `books` VALUES (28, '且听风吟', 12);

SET FOREIGN_KEY_CHECKS = 1;
```

# 3. 引入依赖后 IDEA 要做的事

### 点击 Project Structure

![]()

### 增加 Library Files

![]()