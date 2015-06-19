.class Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$3;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver",
        "<",
        "Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 8

    const/4 v4, 0x1

    const-string v0, "Failed to load radio stations from \'%s\'"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "hm://radio-apollo/v1/all"

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;)Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->e(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/spotlets/collection/adapter/c;

    move-result-object v0

    iget-object v1, p2, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/adapter/c;->a([Lcom/spotify/music/spotlets/radio/model/a;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->e(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/spotlets/collection/adapter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/c;->getCount()I

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d(Z)V

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_20
.end method
