package com.rollthedice.backend.domain.news.api;

import com.rollthedice.backend.domain.news.dto.response.NewsResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface NewsApi {
    @Operation(
            summary = "요약 뉴스 조회",
            description = "요약 뉴스를 페이지로 나누어 조회합니다.",
            security = {@SecurityRequirement(name = "access_token")},
            tags = {"news"}
    )
    @ApiResponse(
            responseCode = "200",
            description = "OK"
    )
    List<NewsResponse> getNews(Pageable pageable);
}
