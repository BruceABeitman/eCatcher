.class public interface abstract Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;
.super Ljava/lang/Object;
.source "GLinkedAccountsManagerPrivate.java"

# interfaces
.implements Lcom/glympse/android/api/GLinkedAccountsManager;


# virtual methods
.method public abstract linkComplete(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
.end method

.method public abstract linkFailed(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
.end method

.method public abstract listComplete(Lcom/glympse/android/hal/GVector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GLinkedAccount;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listFailed(Lcom/glympse/android/api/GServerError;)V
.end method

.method public abstract refreshComplete(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
.end method

.method public abstract refreshFailed(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
.end method

.method public abstract start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.end method

.method public abstract stop()V
.end method

.method public abstract unlinkComplete(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
.end method

.method public abstract unlinkFailed(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
.end method
