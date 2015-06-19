.class Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2$1;
.super Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2$1;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;

    invoke-direct {p0, p2}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2$1;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->x(Landroid/content/Context;)V

    return-void
.end method

.method protected onResolved(Lcom/spotify/cosmos/router/Response;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2$1;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->w(Landroid/content/Context;)V

    return-void
.end method
