package com.example.project.dto;

import com.example.project.entity.Article;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.ToString;

import java.util.List;

@AllArgsConstructor
@ToString
@Getter
public class ArticleForm {

    private Long id;
    private String title;
    private String content;


    public Article toEntity() {
        return new Article(id,title,content);
    }


}
