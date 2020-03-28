package com.waciao.service.impl;

import com.waciao.dao.BooksMapper;
import com.waciao.pojo.Books;
import com.waciao.service.BooksService;

import java.util.List;

/**
 * @Author: Waciao
 * @Date: 2020/3/28
 * @Version: 1.0
 * @Github: https://github.com/byojiaoxianz7
 */

public class BooksServiceImpl implements BooksService {
    private BooksMapper booksMapper;

    public void setBooksMapper(BooksMapper booksMapper) {
        this.booksMapper = booksMapper;
    }

    public int addBook(Books books) {
        return booksMapper.addBook(books);
    }

    public int deleteBookById(int id) {
        return booksMapper.deleteBookById(id);
    }

    public int updateBook(Books books) {
        return booksMapper.updateBook(books);
    }

    public List<Books> queryAllBook() {
        return booksMapper.queryAllBook();
    }

    public Books queryBookById(int id) {
        return booksMapper.queryBookById(id);
    }
}
