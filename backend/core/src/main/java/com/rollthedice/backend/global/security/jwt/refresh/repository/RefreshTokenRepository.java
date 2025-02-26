package com.rollthedice.backend.global.security.jwt.refresh.repository;

import com.rollthedice.backend.global.security.jwt.refresh.domain.RefreshToken;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface RefreshTokenRepository extends CrudRepository<RefreshToken, String> {
    Optional<RefreshToken> findByRefreshToken(String refreshToken);
}
