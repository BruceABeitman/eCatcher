.class public interface abstract Lcom/glympse/android/api/GUserManager;
.super Ljava/lang/Object;
.source "GUserManager.java"
.implements Lcom/glympse/android/core/GCommon;
.method public abstract anyActive()Z
.end method
.method public abstract anyActiveTracked()Z
.end method
.method public abstract enablePersistence(Z)V
.end method
.method public abstract enableSorting(Z)V
.end method
.method public abstract findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
.end method
.method public abstract findUserByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GUser;
.end method
.method public abstract findUserByUserId(Ljava/lang/String;)Lcom/glympse/android/api/GUser;
.end method
.method public abstract getNumTrackers(Lcom/glympse/android/api/GUser;)I
.end method
.method public abstract getSelf()Lcom/glympse/android/api/GUser;
.end method
.method public abstract getSelfTrack()Lcom/glympse/android/api/GTrack;
.end method
.method public abstract getStandaloneUsers()Lcom/glympse/android/core/GArray;
.end method
.method public abstract getTracking()Ljava/util/Enumeration;
.end method
.method public abstract getUserTrackingMode()I
.end method
.method public abstract getUsers()Lcom/glympse/android/core/GArray;
.end method
.method public abstract setUserTrackingMode(I)V
.end method
.method public abstract startTracking(Lcom/glympse/android/api/GUser;)I
.end method
.method public abstract startTrackingAll()V
.end method
.method public abstract stopTracking(Lcom/glympse/android/api/GUser;)I
.end method
.method public abstract stopTrackingAll(Z)V
.end method