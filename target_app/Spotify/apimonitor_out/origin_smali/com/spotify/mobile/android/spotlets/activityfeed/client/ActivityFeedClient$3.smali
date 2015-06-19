.class Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$3;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/activityfeed/client/d;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/d;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;Landroid/os/Handler;Ljava/lang/Class;Lcom/spotify/mobile/android/spotlets/activityfeed/client/d;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$3;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$3;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/d;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$3;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/d;->a()V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$3;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/d;

    invoke-interface {v0, p2}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/d;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;)V

    return-void
.end method
