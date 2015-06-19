.class Lcom/spotify/mobile/android/spotlets/user/TopArtistsFragment$1;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/user/j;->E()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/spotlets/user/TopArtistsListModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/j;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/user/j;Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistsFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/j;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistsFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/j;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/j;->b(Lcom/spotify/mobile/android/spotlets/user/j;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->c:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/spotify/mobile/android/spotlets/user/TopArtistsListModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistsFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/j;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/j;->a(Lcom/spotify/mobile/android/spotlets/user/j;)Lcom/spotify/mobile/android/spotlets/user/i;

    move-result-object v0

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/TopArtistsListModel;->getTopArtists()[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/i;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistsFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/j;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/j;->b(Lcom/spotify/mobile/android/spotlets/user/j;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->d:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V

    return-void
.end method
