.class public interface abstract Lcom/glympse/android/api/GTriggersManager;
.super Ljava/lang/Object;
.source "GTriggersManager.java"

# interfaces
.implements Lcom/glympse/android/api/GEventSink;


# virtual methods
.method public abstract addLocalTrigger(Lcom/glympse/android/api/GTrigger;)V
.end method

.method public abstract getLocalTriggers()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GTrigger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeLocalTrigger(Lcom/glympse/android/api/GTrigger;)V
.end method
