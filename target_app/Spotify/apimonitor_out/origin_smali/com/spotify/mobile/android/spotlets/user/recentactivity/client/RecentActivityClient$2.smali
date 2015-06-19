.class Lcom/spotify/mobile/android/spotlets/user/recentactivity/client/RecentActivityClient$2;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/user/recentactivity/client/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/RecentActivityModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/recentactivity/client/b;


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/client/RecentActivityClient$2;->a:Lcom/spotify/mobile/android/spotlets/user/recentactivity/client/b;

    return-void
.end method

.method protected bridge synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/client/RecentActivityClient$2;->a:Lcom/spotify/mobile/android/spotlets/user/recentactivity/client/b;

    return-void
.end method
