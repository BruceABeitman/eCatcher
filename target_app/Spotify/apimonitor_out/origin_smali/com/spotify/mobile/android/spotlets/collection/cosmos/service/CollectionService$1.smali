.class Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService$1;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ModificationModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Semaphore;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService;Landroid/os/Handler;Ljava/lang/Class;Ljava/util/concurrent/Semaphore;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService$1;->b:Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService$1;->a:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService$1;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService$1;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
