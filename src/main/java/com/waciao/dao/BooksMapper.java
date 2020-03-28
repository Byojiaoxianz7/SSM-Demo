package com.waciao.dao;

import com.waciao.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author: Waciao
 * @Date: 2020/3/28
 * @Version: 1.0
 * @Github: https://github.com/byojiaoxianz7
 */
public interface BooksMapper {
    /**
     * 增加一本书
     */
    int addBook(Books books);

    /**
     * 删除一本书
     */
    int deleteBookById(@Param(value = "bookId") int id);

    /**
     * 更新一本书
     */
    int updateBook(Books books);

    /**
     * 查询所有书
     */
    List<Books> queryAllBook();

    /**
     * 根据 id 查询书
     */
    Books queryBookById(@Param(value = "bookId") int id);

    /**
     * 查询书籍总条数
     */
    int queryBookCount();
}
