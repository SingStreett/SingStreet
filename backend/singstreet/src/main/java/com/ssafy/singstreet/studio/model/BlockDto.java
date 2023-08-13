package com.ssafy.singstreet.studio.model;

import lombok.Builder;
import lombok.Getter;
import org.springframework.data.mongodb.core.mapping.Document;

import javax.persistence.Id;

@Getter
@Builder
@Document(collection = "boxData")
public class BlockDto {

    @Id
    private Integer id;

    private Integer projectId;
    private Integer x;
    private Integer y;
    private String file;
    private String uploader;

}
