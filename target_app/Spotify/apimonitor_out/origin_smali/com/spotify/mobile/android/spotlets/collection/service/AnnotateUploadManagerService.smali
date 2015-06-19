.class public Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/service/session/e;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService$2;-><init>(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/spotify/mobile/android/service/session/e;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/session/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;->a:Lcom/spotify/mobile/android/service/session/e;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;->a:Lcom/spotify/mobile/android/service/session/e;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/session/e;->a(Lcom/spotify/mobile/android/service/session/d;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;->a:Lcom/spotify/mobile/android/service/session/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->a()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;->a:Lcom/spotify/mobile/android/service/session/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    const/4 v0, 0x2

    return v0
.end method
