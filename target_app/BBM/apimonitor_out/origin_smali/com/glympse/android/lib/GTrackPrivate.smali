.class public interface abstract Lcom/glympse/android/lib/GTrackPrivate;
.super Ljava/lang/Object;
.source "GTrackPrivate.java"

# interfaces
.implements Lcom/glympse/android/api/GTrack;
.implements Lcom/glympse/android/core/GPersistable;


# virtual methods
.method public abstract add(Lcom/glympse/android/core/GLocation;J)Z
.end method

.method public abstract addCore(Lcom/glympse/android/core/GLocation;)V
.end method

.method public abstract calculateDistance()V
.end method

.method public abstract getLocationsRaw()Lcom/glympse/android/hal/GLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/hal/GLinkedList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNewLocationsRaw()Lcom/glympse/android/hal/GLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/hal/GLinkedList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSource()I
.end method

.method public abstract merge(Lcom/glympse/android/api/GTrack;J)V
.end method

.method public abstract setDistance(I)V
.end method

.method public abstract setLocations(Lcom/glympse/android/hal/GLinkedList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GLinkedList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNewLocations(Lcom/glympse/android/hal/GLinkedList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GLinkedList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSource(I)V
.end method

.method public abstract trim(JZ)Z
.end method

.method public abstract trim(JZJ)Z
.end method
