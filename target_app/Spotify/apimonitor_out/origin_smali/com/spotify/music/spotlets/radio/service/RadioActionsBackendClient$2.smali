.class Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$2;
.super Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/music/spotlets/radio/service/a;->a(Lcom/spotify/music/spotlets/radio/service/b;Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/spotlets/radio/service/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/spotify/music/spotlets/radio/service/a;


# direct methods
.method constructor <init>(Lcom/spotify/music/spotlets/radio/service/a;Landroid/os/Handler;Lcom/spotify/music/spotlets/radio/service/b;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$2;->c:Lcom/spotify/music/spotlets/radio/service/a;

    iput-object p3, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$2;->a:Lcom/spotify/music/spotlets/radio/service/b;

    iput-object p4, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$2;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 7

    const-string v0, "Failed to call uri \'%s\'. Error was: \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$2;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$2;->a:Lcom/spotify/music/spotlets/radio/service/b;

    invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/service/b;->a()V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$2;->a:Lcom/spotify/music/spotlets/radio/service/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/spotify/music/spotlets/radio/service/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method
