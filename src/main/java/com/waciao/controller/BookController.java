package com.waciao.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.waciao.pojo.Books;
import com.waciao.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: Waciao
 * @Date: 2020/3/28
 * @Version: 1.0
 * @Github: https://github.com/byojiaoxianz7
 */

@Controller
@RequestMapping("/book")
public class BookController {
    /**
     * controller 调用 service
     */
    @Autowired
    @Qualifier("BooksServiceImpl")
    private BooksService booksService;

    /**
     * 查询所有书籍，使用 pagehelper 分页插件
     *
     * @param model model
     * @param startPage 开始页
     * @param pageSize  每页展示的条数
     * @return allBook
     */
    @RequestMapping("/allBook")
    public String list(Model model,
                       @RequestParam(name = "startPage", defaultValue = "1") Integer startPage,
                       @RequestParam(name = "pageSize", defaultValue = "5") Integer pageSize) {
        PageHelper.startPage(startPage, pageSize);
        List<Books> booksList = booksService.queryAllBook();
        PageInfo pageInfo = new PageInfo(booksList, 5);
        model.addAttribute("pageInfo", pageInfo);
        return "allBook";
    }

    /**
     * 跳转到添加书籍页面
     *
     * @return addBook
     */
    @RequestMapping("/toAddBook")
    private String toAddBook() {
        return "addBook";
    }

    /**
     * 添加书籍
     *
     * @param books 实体类
     * @return 重定向到 allBook
     */
    @RequestMapping("/addBook")
    private String addBook(Books books) {
        booksService.addBook(books);
        // 重定向到 allBook
        return "redirect:/book/allBook";
    }

    /**
     * 跳转到修改书籍页面
     * 携带数据，在页面展示
     *
     * @return UpdateBook
     */
    @RequestMapping("/toUpdateBook")
    private String toUpdateBook(int id, Model model) {
        Books books = booksService.queryBookById(id);
        model.addAttribute("QBooks", books);
        return "UpdateBook";
    }

    /**
     * 修改书籍
     *
     * @param books book
     * @return 重定向 allBook
     */
    @RequestMapping("/updateBook")
    public String updateBook(Books books) {
        booksService.updateBook(books);
        return "redirect:/book/allBook";
    }

    /**
     * 删除书籍
     *
     * @param id id
     * @return redirect:/book/allBook
     */
    @RequestMapping("/deleteBook")
    private String deleteBook(int id) {
        booksService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

}
