.class public abstract Lcom/spotify/mobile/android/service/connections/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ServiceConnection;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/spotify/mobile/android/service/connections/j;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;

.field private g:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/service/connections/i$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/connections/i$1;-><init>(Lcom/spotify/mobile/android/service/connections/i;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->a:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->f:Ljava/util/Set;

    iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/i;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/connections/i;->c:Ljava/lang/Class;

    iput-object p3, p0, Lcom/spotify/mobile/android/service/connections/i;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/connections/i;Landroid/os/IInterface;)Landroid/os/IInterface;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/i;->g:Landroid/os/IInterface;

    return-object p1
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/connections/j;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/connections/j;->u_()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/connections/i;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/i;->h:Z

    return v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_6

    :cond_10
    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/service/connections/i;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/connections/j;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/connections/j;->v_()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic c(Lcom/spotify/mobile/android/service/connections/i;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/i;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/service/connections/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/connections/i;->b()V

    return-void
.end method

.method static synthetic e(Lcom/spotify/mobile/android/service/connections/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/connections/i;->a()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public final a(Lcom/spotify/mobile/android/service/connections/j;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->g:Landroid/os/IInterface;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/i;->h:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/connections/i;->c:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/i;->d:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1b
    iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/connections/i;->a:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/connections/i;->b()V

    goto :goto_8
.end method

.method public final k()V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/i;->h:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/i;->h:Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/connections/i;->b()V

    :cond_a
    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->g:Landroid/os/IInterface;

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->g:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/i;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/connections/i;->a()V

    :cond_1b
    return-void
.end method

.method public final l()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->g:Landroid/os/IInterface;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/i;->h:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected final m()Landroid/os/IInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->g:Landroid/os/IInterface;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->g:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_10
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_16
    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/i;->g:Landroid/os/IInterface;

    return-object v0
.end method
