.class public interface abstract Lcom/glympse/android/api/GTicket;
.super Ljava/lang/Object;
.source "GTicket.java"
.implements Lcom/glympse/android/api/GEventSink;
.implements Lcom/glympse/android/core/GComparable;
.method public abstract addInvite(Lcom/glympse/android/api/GInvite;)Z
.end method
.method public abstract appendData(JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Z
.end method
.method public abstract canAddInvite(Lcom/glympse/android/api/GInvite;)Z
.end method
.method public abstract clear(ZZ)Z
.end method
.method public abstract clone()Lcom/glympse/android/api/GTicket;
.end method
.method public abstract deleteInvite(Lcom/glympse/android/api/GInvite;)Z
.end method
.method public abstract deleteTicket()Z
.end method
.method public abstract expire()Z
.end method
.method public abstract extend(I)Z
.end method
.method public abstract findInviteByAddress(Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
.end method
.method public abstract findInviteByCode(Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
.end method
.method public abstract findInviteByType(I)Lcom/glympse/android/api/GInvite;
.end method
.method public abstract getCode()Ljava/lang/String;
.end method
.method public abstract getDestination()Lcom/glympse/android/api/GPlace;
.end method
.method public abstract getDuration()I
.end method
.method public abstract getEta()J
.end method
.method public abstract getExpireTime()J
.end method
.method public abstract getId()Ljava/lang/String;
.end method
.method public abstract getInvites()Lcom/glympse/android/core/GArray;
.end method
.method public abstract getMessage()Ljava/lang/String;
.end method
.method public abstract getOwner()Lcom/glympse/android/api/GAppProfile;
.end method
.method public abstract getProperty(JLjava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.end method
.method public abstract getRoute()Lcom/glympse/android/api/GTrack;
.end method
.method public abstract getStartTime()J
.end method
.method public abstract getState()I
.end method
.method public abstract getTrack()Lcom/glympse/android/api/GTrack;
.end method
.method public abstract getTravelMode()Lcom/glympse/android/api/GTravelMode;
.end method
.method public abstract getUser()Lcom/glympse/android/api/GUser;
.end method
.method public abstract getVisibility()Lcom/glympse/android/core/GPrimitive;
.end method
.method public abstract isActive()Z
.end method
.method public abstract isCompleted()Z
.end method
.method public abstract isMine()Z
.end method
.method public abstract isSibling()Z
.end method
.method public abstract isSomeoneWatching()Z
.end method
.method public abstract isVisible()Z
.end method
.method public abstract isWatching()Z
.end method
.method public abstract modify(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Z
.end method
.method public abstract own()Z
.end method
.method public abstract setRequestEndTime(J)V
.end method
.method public abstract setVisibility(Ljava/lang/String;Ljava/lang/String;)Z
.end method
.method public abstract updateEta(J)V
.end method
.method public abstract updateRoute(Lcom/glympse/android/api/GTrack;)V
.end method