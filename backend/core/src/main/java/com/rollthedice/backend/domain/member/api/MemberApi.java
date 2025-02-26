package com.rollthedice.backend.domain.member.api;

import com.rollthedice.backend.domain.member.dto.response.MemberResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;

public interface MemberApi {
    @Operation(
            summary = "회원 정보 조회",
            description = "회원 정보를 조회합니다.",
            security = {@SecurityRequirement(name = "access_token")},
            tags = {"member"}
    )
    @ApiResponse(
            responseCode = "200",
            description = "OK"
    )
    MemberResponse getMemberInfo();
}
