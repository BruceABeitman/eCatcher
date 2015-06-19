.class final Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService$2;->a:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService$2;->a:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->a(Landroid/content/Context;)V

    return-void
.end method
