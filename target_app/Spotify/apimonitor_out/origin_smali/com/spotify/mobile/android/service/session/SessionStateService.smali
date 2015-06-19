.class public Lcom/spotify/mobile/android/service/session/SessionStateService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Service;",
        "Landroid/support/v4/app/z",
        "<",
        "Lcom/spotify/mobile/android/service/session/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/IBinder;

.field private b:Lcom/spotify/mobile/android/service/b/b;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/spotify/mobile/android/service/session/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/spotify/mobile/android/service/session/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/service/session/c;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/session/c;-><init>(Lcom/spotify/mobile/android/service/session/SessionStateService;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->a:Landroid/os/IBinder;

    new-instance v0, Lcom/spotify/mobile/android/service/b/b;

    invoke-direct {v0}, Lcom/spotify/mobile/android/service/b/b;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->b:Lcom/spotify/mobile/android/service/b/b;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/k",
            "<",
            "Lcom/spotify/mobile/android/service/session/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/service/session/b;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/session/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->d:Lcom/spotify/mobile/android/service/session/a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->d:Lcom/spotify/mobile/android/service/session/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Lcom/spotify/mobile/android/service/session/a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/spotify/mobile/android/service/session/a;

    if-eqz p2, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->d:Lcom/spotify/mobile/android/service/session/a;

    invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/service/session/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    :goto_d
    iput-object p2, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->d:Lcom/spotify/mobile/android/service/session/a;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/session/d;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->d:Lcom/spotify/mobile/android/service/session/a;

    invoke-interface {v0, v2}, Lcom/spotify/mobile/android/service/session/d;->a(Lcom/spotify/mobile/android/service/session/a;)V

    goto :goto_17

    :cond_29
    const/4 v0, 0x0

    goto :goto_d

    :cond_2b
    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/session/d;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->d:Lcom/spotify/mobile/android/service/session/a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->d:Lcom/spotify/mobile/android/service/session/a;

    invoke-interface {p1, v0}, Lcom/spotify/mobile/android/service/session/d;->a(Lcom/spotify/mobile/android/service/session/a;)V

    :cond_e
    return-void
.end method

.method public final b(Lcom/spotify/mobile/android/service/session/d;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->d:Lcom/spotify/mobile/android/service/session/a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->d:Lcom/spotify/mobile/android/service/session/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/a;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->b:Lcom/spotify/mobile/android/service/b/b;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/b/b;->a(Landroid/support/v4/app/z;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->b:Lcom/spotify/mobile/android/service/b/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/b/b;->a()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/session/SessionStateService;->stopSelf()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/SessionStateService;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x1

    return v0
.end method
