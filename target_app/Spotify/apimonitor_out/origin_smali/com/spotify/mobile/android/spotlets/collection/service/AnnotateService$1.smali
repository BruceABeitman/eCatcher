.class Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService$1;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;

.field final synthetic b:Ljava/util/concurrent/Semaphore;

.field final synthetic c:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;Ljava/lang/Class;Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;Ljava/util/concurrent/Semaphore;)V
    .registers 6

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService$1;->c:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService$1;->a:Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService$1;->b:Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 5

    const-string v0, "createPlaylist().onError()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService$1;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 7

    check-cast p2, Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService$1;->a:Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;

    iget-object v1, p2, Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;->uri:Ljava/lang/String;

    iput-object v1, v0, Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;->uri:Ljava/lang/String;

    const-string v0, "Created playlist response: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService$1;->a:Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;

    iget-object v3, v3, Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;->uri:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService$1;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
