.class public interface abstract Lcom/glympse/android/api/GTrack;
.super Ljava/lang/Object;
.source "GTrack.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract getDistance()I
.end method

.method public abstract getLocations()Lcom/glympse/android/core/GList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNewLocations()Lcom/glympse/android/core/GList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract length()I
.end method
