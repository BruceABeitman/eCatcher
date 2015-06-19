.class public interface abstract Lcom/glympse/android/lib/GUserPrivate;
.super Ljava/lang/Object;
.source "GUserPrivate.java"

# interfaces
.implements Lcom/glympse/android/api/GUser;
.implements Lcom/glympse/android/core/GPersistable;
.implements Lcom/glympse/android/lib/GTicketParent;


# virtual methods
.method public abstract addReference()V
.end method

.method public abstract addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
.end method

.method public abstract getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;
.end method

.method public abstract isNicknameSynced()Z
.end method

.method public abstract merge(Lcom/glympse/android/lib/GUserPrivate;Lcom/glympse/android/lib/GGlympsePrivate;)V
.end method

.method public abstract postMessage(JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Z
.end method

.method public abstract removeReference()V
.end method

.method public abstract removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
.end method

.method public abstract setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setLocation(Lcom/glympse/android/core/GLocation;)V
.end method

.method public abstract setNicknameCore(Ljava/lang/String;)V
.end method

.method public abstract setNicknameSynced(Z)V
.end method

.method public abstract setSelf(Z)V
.end method
