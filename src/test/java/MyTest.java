import com.waciao.pojo.Books;
import com.waciao.service.BooksService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * @Author: Waciao
 * @Date: 2020/3/28
 * @Version: 1.0
 * @Github: https://github.com/byojiaoxianz7
 */
public class MyTest {
    @Test
    public void test() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BooksService service = context.getBean("BooksServiceImpl", BooksService.class);
        List<Books> books = service.queryAllBook();
        for (Books book : books) {
            System.out.println(book);
        }
    }

    @Test
    public void test2() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BooksService service = context.getBean("BooksServiceImpl", BooksService.class);
        Books books = service.queryBookById(1);
        System.out.println(books);
    }
}
