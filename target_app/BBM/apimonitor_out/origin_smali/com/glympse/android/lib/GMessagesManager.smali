.class public interface abstract Lcom/glympse/android/lib/GMessagesManager;
.super Ljava/lang/Object;
.source "GMessagesManager.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract addMessage(Ljava/lang/String;)V
.end method

.method public abstract getMessages()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasMessage(Ljava/lang/String;)Z
.end method

.method public abstract load(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;)V
.end method

.method public abstract removeMessage(I)V
.end method

.method public abstract save()V
.end method

.method public abstract start(Lcom/glympse/android/api/GGlympse;)V
.end method

.method public abstract stop()V
.end method
