.class public interface abstract Lcom/glympse/android/lib/GPlacesManager;
.super Ljava/lang/Object;
.source "GPlacesManager.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract addPlace(Lcom/glympse/android/api/GPlace;)V
.end method

.method public abstract getPlaces()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GPlace;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasPlace(Lcom/glympse/android/api/GPlace;)Z
.end method

.method public abstract load(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;)V
.end method

.method public abstract removePlace(I)V
.end method

.method public abstract save()V
.end method

.method public abstract start(Lcom/glympse/android/api/GGlympse;)V
.end method

.method public abstract stop()V
.end method
