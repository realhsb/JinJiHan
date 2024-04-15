package com.rollthedice.backend.domain.bookmark.api;

import com.rollthedice.backend.domain.news.dto.response.NewsResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface BookmarkApi {

    @Operation(
            summary = "북마크 전체 조회",
            description = "북마크한 뉴스를 전체 조회합니다.",
            security = {@SecurityRequirement(name = "access_token")},
            tags = {"bookmark"}
    )
    @ApiResponses(
            value = {
                    @ApiResponse(
                            responseCode = "200",
                            description = "OK"
                    )
            }
    )
    List<NewsResponse> getBookmarked(
            @Parameter
            Pageable pageable
    );

}
