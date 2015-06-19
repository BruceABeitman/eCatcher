.class public interface abstract Lcom/glympse/android/lib/GExtensionManager;
.super Ljava/lang/Object;
.source "GExtensionManager.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract add(Lcom/glympse/android/lib/GExtension;)V
.end method

.method public abstract enable(Lcom/glympse/android/lib/GExtension;Z)V
.end method

.method public abstract getExtensions()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lib/GExtension;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract setBrand(Ljava/lang/String;)V
.end method

.method public abstract start(Lcom/glympse/android/api/GGlympse;)V
.end method

.method public abstract stop()V
.end method
