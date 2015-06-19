.class public Lcom/spotify/mobile/android/service/player/PlayerStateService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:Lcom/spotify/mobile/android/service/player/a/h;

.field private c:Lcom/spotify/mobile/android/service/player/a/f;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/service/player/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/spotify/mobile/android/service/player/b;

.field private f:Lcom/spotify/mobile/android/service/player/a/g;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/service/player/a;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/player/a;-><init>(Lcom/spotify/mobile/android/service/player/PlayerStateService;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->a:Landroid/os/IBinder;

    const-class v0, Lcom/spotify/mobile/android/service/player/a/h;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/player/a/h;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->b:Lcom/spotify/mobile/android/service/player/a/h;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->d:Ljava/util/List;

    new-instance v0, Lcom/spotify/mobile/android/service/player/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/player/b;-><init>(B)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->e:Lcom/spotify/mobile/android/service/player/b;

    new-instance v0, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;-><init>(Lcom/spotify/mobile/android/service/player/PlayerStateService;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->f:Lcom/spotify/mobile/android/service/player/a/g;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/player/PlayerStateService;)Lcom/spotify/mobile/android/service/player/b;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->e:Lcom/spotify/mobile/android/service/player/b;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/service/player/PlayerStateService;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/service/player/a/f;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->c:Lcom/spotify/mobile/android/service/player/a/f;

    return-object v0
.end method

.method public final a(Lcom/spotify/mobile/android/service/player/a/g;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->e:Lcom/spotify/mobile/android/service/player/b;

    iget v1, v0, Lcom/spotify/mobile/android/service/player/b;->a:I

    invoke-interface {p1, v1}, Lcom/spotify/mobile/android/service/player/a/g;->a(I)V

    iget-object v1, v0, Lcom/spotify/mobile/android/service/player/b;->b:Lcom/spotify/mobile/android/service/player/model/d;

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/spotify/mobile/android/service/player/b;->b:Lcom/spotify/mobile/android/service/player/model/d;

    invoke-interface {p1, v1}, Lcom/spotify/mobile/android/service/player/a/g;->a(Lcom/spotify/mobile/android/service/player/model/d;)V

    :cond_15
    iget-object v1, v0, Lcom/spotify/mobile/android/service/player/b;->c:Lcom/spotify/mobile/android/service/player/model/b;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/spotify/mobile/android/service/player/b;->c:Lcom/spotify/mobile/android/service/player/model/b;

    invoke-interface {p1, v1}, Lcom/spotify/mobile/android/service/player/a/g;->a(Lcom/spotify/mobile/android/service/player/model/b;)V

    :cond_1e
    iget-object v1, v0, Lcom/spotify/mobile/android/service/player/b;->d:Lcom/google/common/base/Optional;

    if-eqz v1, :cond_27

    iget-object v0, v0, Lcom/spotify/mobile/android/service/player/b;->d:Lcom/google/common/base/Optional;

    invoke-interface {p1, v0}, Lcom/spotify/mobile/android/service/player/a/g;->a(Lcom/google/common/base/Optional;)V

    :cond_27
    return-void
.end method

.method public final b(Lcom/spotify/mobile/android/service/player/a/g;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->b:Lcom/spotify/mobile/android/service/player/a/h;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/player/a/h;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/service/player/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->c:Lcom/spotify/mobile/android/service/player/a/f;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->c:Lcom/spotify/mobile/android/service/player/a/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->f:Lcom/spotify/mobile/android/service/player/a/g;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/player/a/f;->a(Lcom/spotify/mobile/android/service/player/a/g;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->c:Lcom/spotify/mobile/android/service/player/a/f;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/player/a/f;->c()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->c:Lcom/spotify/mobile/android/service/player/a/f;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/player/a/f;->d()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->c:Lcom/spotify/mobile/android/service/player/a/f;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/player/a/f;->c()V

    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->stopSelf()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService;->c:Lcom/spotify/mobile/android/service/player/a/f;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/player/a/f;->d()V

    const/4 v0, 0x1

    return v0
.end method
