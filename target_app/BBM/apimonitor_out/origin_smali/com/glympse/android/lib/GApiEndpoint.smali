.class public interface abstract Lcom/glympse/android/lib/GApiEndpoint;
.super Ljava/lang/Object;
.source "GApiEndpoint.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getError()Ljava/lang/String;
.end method

.method public abstract getErrorDetail()Ljava/lang/String;
.end method

.method public abstract getHandler(Lcom/glympse/android/lib/json/GJsonHandlerStack;)Lcom/glympse/android/lib/json/GJsonHandler;
.end method

.method public abstract getResult()Ljava/lang/String;
.end method

.method public abstract getTime()J
.end method

.method public abstract post()Ljava/lang/String;
.end method

.method public abstract process()Z
.end method

.method public abstract shouldRetry(ZI)Z
.end method

.method public abstract url(Ljava/lang/StringBuilder;)Z
.end method

.method public abstract userAgent()Z
.end method
