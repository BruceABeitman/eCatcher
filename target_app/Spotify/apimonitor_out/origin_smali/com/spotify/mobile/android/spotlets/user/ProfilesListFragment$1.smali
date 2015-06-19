.class Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$1;
.super Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->E()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/spotlets/user/ProfileListModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 5

    const-string v0, "Profile List failed to load"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->c(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->c:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/spotify/mobile/android/spotlets/user/ProfileListModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/ProfileListModel;->getProfiles()[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->a(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->a(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;)[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->b(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->c(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->d:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V

    goto :goto_18
.end method
