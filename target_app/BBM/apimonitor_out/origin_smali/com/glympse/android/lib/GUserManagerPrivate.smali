.class public interface abstract Lcom/glympse/android/lib/GUserManagerPrivate;
.super Ljava/lang/Object;
.source "GUserManagerPrivate.java"

# interfaces
.implements Lcom/glympse/android/api/GUserManager;


# virtual methods
.method public abstract addStandaloneUser(Lcom/glympse/android/lib/GUserPrivate;)V
.end method

.method public abstract addTicketToInviteIndex(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GTicket;)V
.end method

.method public abstract addUser(Lcom/glympse/android/lib/GUserPrivate;)V
.end method

.method public abstract extractFromCache(Ljava/lang/String;Z)Lcom/glympse/android/lib/GUserPrivate;
.end method

.method public abstract modifyUser(Lcom/glympse/android/lib/GUserPrivate;)V
.end method

.method public abstract orderChanged()V
.end method

.method public abstract postMessage(Ljava/lang/String;JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
.end method

.method public abstract refreshUser(Lcom/glympse/android/lib/GUserPrivate;)V
.end method

.method public abstract removeStandaloneUser(Lcom/glympse/android/lib/GUserPrivate;)V
.end method

.method public abstract removeTicketFromInviteIndex(Lcom/glympse/android/api/GTicket;)V
.end method

.method public abstract removeUser(Lcom/glympse/android/lib/GUserPrivate;)V
.end method

.method public abstract resolveUser(Lcom/glympse/android/lib/GUserPrivate;)Lcom/glympse/android/lib/GUserPrivate;
.end method

.method public abstract save()V
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract setSelfLocation(Lcom/glympse/android/core/GLocation;ZZ)V
.end method

.method public abstract setSelfUserId(Ljava/lang/String;Z)V
.end method

.method public abstract start(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GPrimitive;)V
.end method

.method public abstract stop()V
.end method

.method public abstract viewTicket(Lcom/glympse/android/api/GUserTicket;)Lcom/glympse/android/api/GTicket;
.end method
