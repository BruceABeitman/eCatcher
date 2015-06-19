.class Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewFragment$2;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/follow/c;->E()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/follow/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/follow/c;Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewFragment$2;->a:Lcom/spotify/mobile/android/spotlets/follow/c;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewFragment$2;->a:Lcom/spotify/mobile/android/spotlets/follow/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/follow/c;->d(Lcom/spotify/mobile/android/spotlets/follow/c;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->c:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewFragment$2;->a:Lcom/spotify/mobile/android/spotlets/follow/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/follow/c;->o()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewFragment$2;->a:Lcom/spotify/mobile/android/spotlets/follow/c;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;->getFacebookFriends()[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/c;->a(Lcom/spotify/mobile/android/spotlets/follow/c;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewFragment$2;->a:Lcom/spotify/mobile/android/spotlets/follow/c;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;->getMostPlayedArtists()[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/c;->b(Lcom/spotify/mobile/android/spotlets/follow/c;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewFragment$2;->a:Lcom/spotify/mobile/android/spotlets/follow/c;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;->getWhoToFollow()[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/c;->c(Lcom/spotify/mobile/android/spotlets/follow/c;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewFragment$2;->a:Lcom/spotify/mobile/android/spotlets/follow/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/follow/c;->c(Lcom/spotify/mobile/android/spotlets/follow/c;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewFragment$2;->a:Lcom/spotify/mobile/android/spotlets/follow/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/follow/c;->d(Lcom/spotify/mobile/android/spotlets/follow/c;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->d:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V

    :cond_35
    return-void
.end method
