.class Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$1;
.super Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/music/spotlets/radio/service/a;->a(Lcom/spotify/music/spotlets/radio/service/b;Ljava/lang/Class;Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/spotlets/radio/service/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/spotify/music/spotlets/radio/service/a;


# direct methods
.method constructor <init>(Lcom/spotify/music/spotlets/radio/service/a;Landroid/os/Handler;Ljava/lang/Class;Lcom/spotify/music/spotlets/radio/service/b;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$1;->c:Lcom/spotify/music/spotlets/radio/service/a;

    iput-object p4, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$1;->a:Lcom/spotify/music/spotlets/radio/service/b;

    iput-object p5, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$1;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 7

    const-string v0, "Failed to call uri \'%s\'. Error was: \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$1;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$1;->a:Lcom/spotify/music/spotlets/radio/service/b;

    invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/service/b;->a()V

    return-void
.end method

.method protected onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/cosmos/router/Response;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$1;->a:Lcom/spotify/music/spotlets/radio/service/b;

    invoke-interface {v0, p2}, Lcom/spotify/music/spotlets/radio/service/b;->a(Ljava/lang/Object;)V

    return-void
.end method
