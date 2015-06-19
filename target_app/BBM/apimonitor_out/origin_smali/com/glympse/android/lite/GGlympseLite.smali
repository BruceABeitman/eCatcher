.class public interface abstract Lcom/glympse/android/lite/GGlympseLite;
.super Ljava/lang/Object;
.source "GGlympseLite.java"

# interfaces
.implements Lcom/glympse/android/lite/GListenerLite;


# virtual methods
.method public abstract addListener(Lcom/glympse/android/lite/GListenerLite;)Z
.end method

.method public abstract allowSpeedSharing(Z)V
.end method

.method public abstract enableIntroScreen(Z)V
.end method

.method public abstract getApiVersion()Ljava/lang/String;
.end method

.method public abstract getAvatar()Lcom/glympse/android/core/GDrawable;
.end method

.method public abstract getListeners()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lite/GListenerLite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getTickets()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lite/GTicketLite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTime()J
.end method

.method public abstract isAvatarSet()I
.end method

.method public abstract isHistoryRestored()Z
.end method

.method public abstract isIntroScreenEnabled()Z
.end method

.method public abstract isSharingSpeed()Z
.end method

.method public abstract isSynced()Z
.end method

.method public abstract removeListener(Lcom/glympse/android/lite/GListenerLite;)Z
.end method

.method public abstract sendTicket(Lcom/glympse/android/lite/GTicketLite;I)Z
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract setAvatar(Lcom/glympse/android/core/GDrawable;)V
.end method

.method public abstract setAvatar(Ljava/lang/String;I)V
.end method

.method public abstract setNickname(Ljava/lang/String;)V
.end method

.method public abstract setRestoreHistory(Z)V
.end method

.method public abstract showAbout()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
