package com.waciao.pojo;

/**
 * @Author: Waciao
 * @Date: 2020/3/28
 * @Version: 1.0
 * @Github: https://github.com/byojiaoxianz7
 */
public class Books {
    private Integer id;
    private String title;
    private Integer price;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Books(Integer id, String title, Integer price) {
        this.id = id;
        this.title = title;
        this.price = price;
    }

    public Books() {
    }

    @Override
    public String toString() {
        return "Books{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", price=" + price +
                '}';
    }
}
