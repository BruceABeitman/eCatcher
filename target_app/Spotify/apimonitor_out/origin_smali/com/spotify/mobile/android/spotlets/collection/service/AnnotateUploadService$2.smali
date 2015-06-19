.class Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$2;
.super Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->a(Lcom/spotify/mobile/android/util/ClientEvent;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;

.field final synthetic b:Ljava/util/concurrent/Semaphore;

.field final synthetic c:Lcom/spotify/mobile/android/util/ClientEvent;

.field final synthetic d:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;Ljava/lang/Class;Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;Ljava/util/concurrent/Semaphore;Lcom/spotify/mobile/android/util/ClientEvent;)V
    .registers 7

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$2;->d:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$2;->a:Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$2;->b:Ljava/util/concurrent/Semaphore;

    iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$2;->c:Lcom/spotify/mobile/android/util/ClientEvent;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 6

    const-string v0, "getIdentityToken.onError()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$2;->c:Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v1, "token_request_error"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$2;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$2;->a:Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;

    iget-object v1, p2, Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;->accessToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;->accessToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$2;->a:Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;

    iget v1, p2, Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;->expiresIn:I

    iput v1, v0, Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;->expiresIn:I

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$2;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
