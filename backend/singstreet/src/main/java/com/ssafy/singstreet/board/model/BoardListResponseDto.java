package com.ssafy.singstreet.board.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class BoardListResponseDto {
    private int boardId;
    private int userId;
    private String nickname;
    private Character type;
    private String title;
    private Integer hitCount;
}
