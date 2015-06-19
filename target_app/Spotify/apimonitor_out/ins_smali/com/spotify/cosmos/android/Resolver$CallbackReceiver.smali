.class public abstract Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.super Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
.source "SourceFile"
.method public constructor <init>(Landroid/os/Handler;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;-><init>(Landroid/os/Handler;)V
return-void
.end method
.method protected abstract onError(Ljava/lang/Throwable;)V
.end method
.method protected abstract onResolved(Lcom/spotify/cosmos/router/Response;)V
.end method