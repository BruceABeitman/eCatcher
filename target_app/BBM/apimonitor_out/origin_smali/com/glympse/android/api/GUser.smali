.class public interface abstract Lcom/glympse/android/api/GUser;
.super Ljava/lang/Object;
.source "GUser.java"

# interfaces
.implements Lcom/glympse/android/api/GEventSink;


# virtual methods
.method public abstract findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
.end method

.method public abstract getActive()Lcom/glympse/android/api/GTicket;
.end method

.method public abstract getActiveStandalone()Lcom/glympse/android/api/GTicket;
.end method

.method public abstract getAvatar()Lcom/glympse/android/api/GImage;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLocation()Lcom/glympse/android/core/GLocation;
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getTickets()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GTicket;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isSelf()Z
.end method

.method public abstract isUploadingAvatar()Z
.end method

.method public abstract modify(Ljava/lang/String;Lcom/glympse/android/core/GDrawable;)Z
.end method

.method public abstract setAvatar(Lcom/glympse/android/core/GDrawable;)Z
.end method

.method public abstract setNickname(Ljava/lang/String;)Z
.end method

.method public abstract stopWatching()Z
.end method
