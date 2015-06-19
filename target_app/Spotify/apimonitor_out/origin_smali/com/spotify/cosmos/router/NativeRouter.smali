.class public Lcom/spotify/cosmos/router/NativeRouter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/cosmos/router/Router;


# instance fields
.field private nPtr:J
    .annotation build Lcom/spotify/cosmos/annotations/UsedFromNativeCode;
    .end annotation
.end field


# direct methods
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


# virtual methods
.method public native destroy()V
.end method

.method public native resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/router/ResolveCallback;)V
.end method
