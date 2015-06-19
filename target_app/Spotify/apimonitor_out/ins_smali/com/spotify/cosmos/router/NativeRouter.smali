.class public Lcom/spotify/cosmos/router/NativeRouter;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/cosmos/router/Router;
.field private nPtr:J
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/cosmos/router/RouterParams;
invoke-direct {v0}, Lcom/spotify/cosmos/router/RouterParams;-><init>()V
invoke-direct {p0, v0}, Lcom/spotify/cosmos/router/NativeRouter;->init(Lcom/spotify/cosmos/router/RouterParams;)V
return-void
.end method
.method public constructor <init>(Lcom/spotify/cosmos/router/RouterParams;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-direct {p0, p1}, Lcom/spotify/cosmos/router/NativeRouter;->init(Lcom/spotify/cosmos/router/RouterParams;)V
return-void
.end method
.method private native init(Lcom/spotify/cosmos/router/RouterParams;)V
.end method
.method public native destroy()V
.end method
.method public native resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/router/ResolveCallback;)V
.end method