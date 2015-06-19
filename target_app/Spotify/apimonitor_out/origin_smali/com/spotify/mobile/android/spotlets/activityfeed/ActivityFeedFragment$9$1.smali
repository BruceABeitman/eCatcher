.class Lcom/spotify/mobile/android/spotlets/activityfeed/ActivityFeedFragment$9$1;
.super Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/activityfeed/a$9;->a(Lcom/spotify/mobile/android/util/PlaybackListener;Ljava/util/EnumSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/activityfeed/a$9;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a$9;Landroid/os/Handler;Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/ActivityFeedFragment$9$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/a$9;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/ActivityFeedFragment$9$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    invoke-direct {p0, p2}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/ActivityFeedFragment$9$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->b()V

    return-void
.end method

.method protected onResolved(Lcom/spotify/cosmos/router/Response;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/ActivityFeedFragment$9$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->b()V

    return-void
.end method
