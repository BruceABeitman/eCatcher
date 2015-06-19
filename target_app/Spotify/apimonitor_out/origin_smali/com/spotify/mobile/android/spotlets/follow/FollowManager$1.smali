.class Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;
.super Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/follow/FollowManager;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->e:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->c:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->d:Z

    invoke-direct {p0, p2}, Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "Failed to %s. Rolling back follow state."

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->a:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {p1, v0, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->e:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->c:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->d:Z

    if-nez v0, :cond_34

    move v0, v1

    :goto_16
    invoke-static {v3, v4, v0}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Lcom/spotify/mobile/android/spotlets/follow/FollowManager;Ljava/lang/String;Z)V

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v0

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->h:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-ne v0, v3, :cond_33

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->e:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->d:Z

    if-nez v4, :cond_36

    :goto_30
    invoke-static {v0, v3, v1}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->b(Lcom/spotify/mobile/android/spotlets/follow/FollowManager;Ljava/lang/String;Z)V

    :cond_33
    return-void

    :cond_34
    move v0, v2

    goto :goto_16

    :cond_36
    move v1, v2

    goto :goto_30
.end method

.method protected onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 7

    const-string v0, "%s %s succeeded"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method
