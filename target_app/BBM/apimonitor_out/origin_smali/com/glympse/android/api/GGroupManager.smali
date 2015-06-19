.class public interface abstract Lcom/glympse/android/api/GGroupManager;
.super Ljava/lang/Object;
.source "GGroupManager.java"

# interfaces
.implements Lcom/glympse/android/api/GEventSink;


# virtual methods
.method public abstract acceptRequest(Lcom/glympse/android/api/GGroup;)Z
.end method

.method public abstract anyActive()Z
.end method

.method public abstract anyActiveTracked()Z
.end method

.method public abstract createGroup(Ljava/lang/String;)Lcom/glympse/android/api/GGroup;
.end method

.method public abstract discardRequest(Lcom/glympse/android/api/GGroup;)Z
.end method

.method public abstract findGroupByGroupId(Ljava/lang/String;)Lcom/glympse/android/api/GGroup;
.end method

.method public abstract getGroups()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPendingGroups()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTracking()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/glympse/android/api/GGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isSynced()Z
.end method

.method public abstract isValidGroup(Ljava/lang/String;)Z
.end method

.method public abstract startTracking(Lcom/glympse/android/api/GGroup;)I
.end method

.method public abstract startTrackingAll()V
.end method

.method public abstract stopTracking(Lcom/glympse/android/api/GGroup;)I
.end method

.method public abstract stopTrackingAll(Z)V
.end method

.method public abstract validateGroupName(Ljava/lang/String;)I
.end method

.method public abstract viewGroup(Ljava/lang/String;)Lcom/glympse/android/api/GGroup;
.end method
