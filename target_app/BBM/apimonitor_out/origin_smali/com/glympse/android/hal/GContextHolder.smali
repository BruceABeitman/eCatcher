.class public interface abstract Lcom/glympse/android/hal/GContextHolder;
.super Ljava/lang/Object;
.source "GContextHolder.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getResourceGateway()Lcom/glympse/android/hal/GResourceGateway;
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setResourceGateway(Lcom/glympse/android/hal/GResourceGateway;)V
.end method

.method public abstract verifyFullConfiguration(Lcom/glympse/android/api/GGlympse;)V
.end method

.method public abstract verifyLiteConfiguration(Lcom/glympse/android/api/GGlympse;)V
.end method
