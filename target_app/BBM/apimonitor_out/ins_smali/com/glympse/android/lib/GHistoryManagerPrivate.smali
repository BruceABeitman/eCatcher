.class public interface abstract Lcom/glympse/android/lib/GHistoryManagerPrivate;
.super Ljava/lang/Object;
.source "GHistoryManagerPrivate.java"
.implements Lcom/glympse/android/api/GHistoryManager;
.implements Lcom/glympse/android/lib/GTicketParent;
.method public abstract addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
.end method
.method public abstract clearLatestExpireTime()V
.end method
.method public abstract completePending()V
.end method
.method public abstract completeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
.end method
.method public abstract isActive(Lcom/glympse/android/api/GTicket;J)Z
.end method
.method public abstract isHighPostRateOn()Z
.end method
.method public abstract removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
.end method
.method public abstract sendTicket(Lcom/glympse/android/api/GTicket;)Z
.end method
.method public abstract sendTicketPhase2(Lcom/glympse/android/lib/GTicketPrivate;ILjava/util/Hashtable;)V
.end method
.method public abstract setActive(Z)V
.end method
.method public abstract setLastViewTime(JZ)V
.end method
.method public abstract start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.end method
.method public abstract stop()V
.end method
.method public abstract syncFresh()V
.end method
.method public abstract syncRefresh()V
.end method
.method public abstract syncedWithServer(Lcom/glympse/android/lib/eh;)V
.end method
.method public abstract updateState(J)V
.end method