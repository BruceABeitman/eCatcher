.class Lcom/spotify/mobile/android/spotlets/artist/model/ArtistLoader$1;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/model/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/model/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/model/a;Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistLoader$1;->a:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistLoader$1;->a:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/a;->a(Lcom/spotify/mobile/android/spotlets/artist/model/a;)Lcom/spotify/mobile/android/spotlets/artist/model/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/model/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    iget-object v0, p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->topTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistLoader$1;->a:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/a;->a(Lcom/spotify/mobile/android/spotlets/artist/model/a;)Lcom/spotify/mobile/android/spotlets/artist/model/b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/spotify/mobile/android/spotlets/artist/model/b;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistLoader$1;->a:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/a;->b(Lcom/spotify/mobile/android/spotlets/artist/model/a;)Lcom/spotify/mobile/android/spotlets/artist/model/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/artist/model/d;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V

    goto :goto_13
.end method
