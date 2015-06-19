.class Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$3;
.super Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent;)Z
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
.field final synthetic a:[Z

.field final synthetic b:Ljava/util/concurrent/Semaphore;

.field final synthetic c:Lcom/spotify/mobile/android/util/ClientEvent;

.field final synthetic d:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;[ZLjava/util/concurrent/Semaphore;Lcom/spotify/mobile/android/util/ClientEvent;)V
    .registers 6

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$3;->d:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$3;->a:[Z

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$3;->b:Ljava/util/concurrent/Semaphore;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$3;->c:Lcom/spotify/mobile/android/util/ClientEvent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$3;->c:Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v1, "annotation_request_error"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v0, "setImageIdAndDescription().onError"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$3;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method protected onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$3;->a:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$3;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method protected parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method
