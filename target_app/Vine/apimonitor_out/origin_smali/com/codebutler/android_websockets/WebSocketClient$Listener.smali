.class public interface abstract Lcom/codebutler/android_websockets/WebSocketClient$Listener;
.super Ljava/lang/Object;
.source "WebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codebutler/android_websockets/WebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onConnect()V
.end method

.method public abstract onDisconnect(ILjava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public abstract onMessage([B)V
.end method
