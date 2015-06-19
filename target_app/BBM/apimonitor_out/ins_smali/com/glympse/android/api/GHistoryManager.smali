.class public interface abstract Lcom/glympse/android/api/GHistoryManager;
.super Ljava/lang/Object;
.source "GHistoryManager.java"
.implements Lcom/glympse/android/core/GCommon;
.method public abstract anyActive()Z
.end method
.method public abstract anyActive(Z)Z
.end method
.method public abstract anyActive(ZZ)Z
.end method
.method public abstract arePreSyncEventsEnabled()Z
.end method
.method public abstract canSend(Lcom/glympse/android/api/GInvite;)Z
.end method
.method public abstract enableCancellationTimer(Z)V
.end method
.method public abstract enablePreSyncEvents(Z)V
.end method
.method public abstract findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
.end method
.method public abstract findTicketByTicketId(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
.end method
.method public abstract getCancellationTimeout()I
.end method
.method public abstract getExpirationMode()I
.end method
.method public abstract getLastViewTime()J
.end method
.method public abstract getTickets()Lcom/glympse/android/core/GArray;
.end method
.method public abstract isCancellationTimerEnabled()Z
.end method
.method public abstract isSomeoneWatching()Z
.end method
.method public abstract isSynced()Z
.end method
.method public abstract refresh()V
.end method
.method public abstract setCancellationTimeout(I)V
.end method
.method public abstract setExpirationMode(I)V
.end method
.method public abstract simulateAddedEvents(Lcom/glympse/android/api/GEventListener;)V
.end method