.class public interface abstract Lcom/glympse/android/lib/GFavoritesManager;
.super Ljava/lang/Object;
.source "GFavoritesManager.java"
.implements Lcom/glympse/android/api/GEventSink;
.method public abstract addFavorite(Lcom/glympse/android/api/GTicket;)V
.end method
.method public abstract findMatch(Lcom/glympse/android/api/GTicket;)Lcom/glympse/android/api/GTicket;
.end method
.method public abstract getDraft()Lcom/glympse/android/api/GTicket;
.end method
.method public abstract getFavorites()Lcom/glympse/android/core/GArray;
.end method
.method public abstract hasFavorite(Lcom/glympse/android/api/GTicket;)Z
.end method
.method public abstract load(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;)V
.end method
.method public abstract moveFavorite(II)V
.end method
.method public abstract removeFavorite(I)V
.end method
.method public abstract removeFavorite(Lcom/glympse/android/api/GTicket;)V
.end method
.method public abstract save()V
.end method
.method public abstract setActive(Z)V
.end method
.method public abstract setDraft(Lcom/glympse/android/api/GTicket;)V
.end method
.method public abstract start(Lcom/glympse/android/api/GGlympse;)V
.end method
.method public abstract stop()V
.end method