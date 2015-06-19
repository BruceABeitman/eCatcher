.class public interface abstract Lcom/glympse/android/lib/GRecipientsManager;
.super Ljava/lang/Object;
.source "GRecipientsManager.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract addRecipient(Lcom/glympse/android/api/GInvite;)V
.end method

.method public abstract getRecipients()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecipients(Ljava/lang/String;)Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasRecipient(Lcom/glympse/android/api/GInvite;)Z
.end method

.method public abstract removeRecipient(I)V
.end method

.method public abstract start(Lcom/glympse/android/api/GGlympse;)V
.end method

.method public abstract stop()V
.end method
