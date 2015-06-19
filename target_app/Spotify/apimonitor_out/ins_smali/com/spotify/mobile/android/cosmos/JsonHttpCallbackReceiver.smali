.class public abstract Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Class;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V
return-void
.end method
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
return-void
.end method
.method protected verifyResponse(Lcom/spotify/cosmos/router/Response;)V
.registers 2
invoke-static {p1}, Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;->defaultVerifyResponse(Lcom/spotify/cosmos/router/Response;)V
return-void
.end method