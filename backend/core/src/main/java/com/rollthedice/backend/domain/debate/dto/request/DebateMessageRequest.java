package com.rollthedice.backend.domain.debate.dto.request;

import com.rollthedice.backend.domain.debate.entity.DebateMessage;
import com.rollthedice.backend.domain.debate.entity.DebateRoom;
import com.rollthedice.backend.domain.debate.entity.SenderType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class DebateMessageRequest {
    private String message;

    public DebateMessage toHumanMessageEntity(DebateRoom debateRoom) {
        return DebateMessage.builder()
                .message(this.message)
                .senderType(SenderType.HUMAN)
                .debateRoom(debateRoom)
                .build();
    }

    public DebateMessage toAIMessageEntity(DebateRoom debateRoom) {
        return DebateMessage.builder()
                .message(this.message)
                .senderType(SenderType.AI)
                .debateRoom(debateRoom)
                .build();
    }
}
