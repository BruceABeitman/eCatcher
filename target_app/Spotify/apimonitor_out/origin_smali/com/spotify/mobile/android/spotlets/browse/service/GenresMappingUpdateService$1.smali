.class Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService$1;
.super Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/spotlets/browse/model/GenresMapping;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService$1;->a:Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to fetch updated seeds for browse page. Cause "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService$1;->a:Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;->stopSelf()V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Lcom/spotify/mobile/android/spotlets/browse/model/GenresMapping;

    if-eqz p2, :cond_9

    iget-object v0, p2, Lcom/spotify/mobile/android/spotlets/browse/model/GenresMapping;->genres:[Lcom/spotify/mobile/android/spotlets/browse/model/GenreMapping;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a([Lcom/spotify/mobile/android/spotlets/browse/model/GenreMapping;)V

    :cond_9
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService$1;->a:Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;->stopSelf()V

    return-void
.end method
