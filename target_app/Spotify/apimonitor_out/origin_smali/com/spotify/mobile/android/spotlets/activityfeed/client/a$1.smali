.class final Lcom/spotify/mobile/android/spotlets/activityfeed/client/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->b(Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V

    :cond_12
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getNextPagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;

    invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;->a(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V

    return-void
.end method
