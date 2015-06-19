.class public interface abstract Lcom/glympse/android/hal/GPhoneFavoriteProvider;
.super Ljava/lang/Object;
.source "GPhoneFavoriteProvider.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract getPhoneFavorites()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lib/GPhoneFavorite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refresh(Z)V
.end method

.method public abstract start(Lcom/glympse/android/hal/GPhoneFavoriteListener;Lcom/glympse/android/core/GHandler;)V
.end method

.method public abstract stop()V
.end method
