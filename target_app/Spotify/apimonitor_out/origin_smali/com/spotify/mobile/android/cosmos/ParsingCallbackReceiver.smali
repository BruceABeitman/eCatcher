.class public abstract Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;
.super Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private postError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$2;-><init>(Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V

    goto :goto_e
.end method

.method private postResult(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/cosmos/router/Response;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$1;-><init>(Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V

    goto :goto_e
.end method


# virtual methods
.method protected final onError(Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;->RESOLVING:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->postError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V

    return-void
.end method

.method protected abstract onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.end method

.method protected final onResolved(Lcom/spotify/cosmos/router/Response;)V
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->verifyResponse(Lcom/spotify/cosmos/router/Response;)V

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->postResult(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    :try_end_a
    .catch Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ParserException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    sget-object v1, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;->PARSING:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->postError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V

    goto :goto_a
.end method

.method protected abstract onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/cosmos/router/Response;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected abstract parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/cosmos/router/Response;",
            ")TT;"
        }
    .end annotation
.end method

.method protected verifyResponse(Lcom/spotify/cosmos/router/Response;)V
    .registers 2

    return-void
.end method
