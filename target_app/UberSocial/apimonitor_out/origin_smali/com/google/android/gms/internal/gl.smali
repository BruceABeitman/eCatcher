.class public abstract Lcom/google/android/gms/internal/gl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/common/d;
.implements Lcom/google/android/gms/internal/gw;


# static fields
.field public static final e:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Looper;

.field final c:Landroid/os/Handler;

.field d:Z

.field private f:Landroid/os/IInterface;

.field private final g:Ljava/util/ArrayList;

.field private h:Lcom/google/android/gms/internal/gr;

.field private volatile i:I

.field private final j:[Ljava/lang/String;

.field private final k:Lcom/google/android/gms/internal/gu;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/gl;->e:[Ljava/lang/String;

    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;[Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gl;->g:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gl;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gl;->d:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/gl;->a:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/internal/gl;->b:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/internal/gu;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/gu;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gl;->k:Lcom/google/android/gms/internal/gu;

    new-instance v0, Lcom/google/android/gms/internal/gm;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gm;-><init>(Lcom/google/android/gms/internal/gl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gl;->c:Landroid/os/Handler;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/gl;->a([Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/gl;->j:[Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gl;->a(Lcom/google/android/gms/common/api/h;)V

    invoke-static {p4}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gl;->a(Lcom/google/android/gms/common/api/i;)V

    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;[Ljava/lang/String;)V
    .registers 11

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/go;

    invoke-direct {v3, p2}, Lcom/google/android/gms/internal/go;-><init>(Lcom/google/android/gms/common/e;)V

    new-instance v4, Lcom/google/android/gms/internal/gs;

    invoke-direct {v4, p3}, Lcom/google/android/gms/internal/gs;-><init>(Lcom/google/android/gms/common/f;)V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gl;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/gl;->i:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gl;Landroid/os/IInterface;)Landroid/os/IInterface;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gl;->f:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gr;)Lcom/google/android/gms/internal/gr;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gl;->h:Lcom/google/android/gms/internal/gr;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gl;)Lcom/google/android/gms/internal/gu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->k:Lcom/google/android/gms/internal/gu;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/gl;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/gl;)Landroid/os/IInterface;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->f:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/gl;)Lcom/google/android/gms/internal/gr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->h:Lcom/google/android/gms/internal/gr;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/gl;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    const/4 v3, 0x3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gl;->d:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/gl;->i:I

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/i;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_21

    iput v1, p0, Lcom/google/android/gms/internal/gl;->i:I

    iget-object v1, p0, Lcom/google/android/gms/internal/gl;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/gl;->c:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->h:Lcom/google/android/gms/internal/gr;

    if-eqz v0, :cond_3e

    const-string v0, "GmsClient"

    const-string v1, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gl;->f:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/gx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gl;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gl;->h:Lcom/google/android/gms/internal/gr;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gx;->b(Ljava/lang/String;Lcom/google/android/gms/internal/gr;)V

    :cond_3e
    new-instance v0, Lcom/google/android/gms/internal/gr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gr;-><init>(Lcom/google/android/gms/internal/gl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gl;->h:Lcom/google/android/gms/internal/gr;

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/gx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gl;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gl;->h:Lcom/google/android/gms/internal/gr;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/gr;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gl;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/gl;->c:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_20
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/gl;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/internal/gt;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/internal/gt;-><init>(Lcom/google/android/gms/internal/gl;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/h;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->k:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gu;->a(Lcom/google/android/gms/common/api/h;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/i;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->k:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gu;->a(Lcom/google/android/gms/common/f;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/e;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->k:Lcom/google/android/gms/internal/gu;

    new-instance v1, Lcom/google/android/gms/internal/go;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/go;-><init>(Lcom/google/android/gms/common/e;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gu;->a(Lcom/google/android/gms/common/api/h;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/f;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->k:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gu;->a(Lcom/google/android/gms/common/f;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/gn;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/gl;->g:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/gl;->c:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method protected abstract a(Lcom/google/android/gms/internal/hh;Lcom/google/android/gms/internal/gq;)V
.end method

.method protected varargs a([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public b()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract b(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public b(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/gl;->c:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Lcom/google/android/gms/common/e;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->k:Lcom/google/android/gms/internal/gu;

    new-instance v1, Lcom/google/android/gms/internal/go;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/go;-><init>(Lcom/google/android/gms/common/e;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gu;->b(Lcom/google/android/gms/common/api/h;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/common/f;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->k:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gu;->b(Lcom/google/android/gms/common/f;)Z

    move-result v0

    return v0
.end method

.method protected final c(Landroid/os/IBinder;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/hi;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gq;-><init>(Lcom/google/android/gms/internal/gl;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gl;->a(Lcom/google/android/gms/internal/hh;Lcom/google/android/gms/internal/gq;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string v0, "GmsClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public c(Lcom/google/android/gms/common/e;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->k:Lcom/google/android/gms/internal/gu;

    new-instance v1, Lcom/google/android/gms/internal/go;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/go;-><init>(Lcom/google/android/gms/common/e;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gu;->c(Lcom/google/android/gms/common/api/h;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/common/f;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->k:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gu;->c(Lcom/google/android/gms/common/f;)V

    return-void
.end method

.method public c()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/gl;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public c_()V
    .registers 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gl;->d:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/gl;->g:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/gl;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gn;->k()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_40

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gl;->i:I

    iput-object v4, p0, Lcom/google/android/gms/internal/gl;->f:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->h:Lcom/google/android/gms/internal/gr;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/gx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gl;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gl;->h:Lcom/google/android/gms/internal/gr;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gx;->b(Ljava/lang/String;Lcom/google/android/gms/internal/gr;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/gl;->h:Lcom/google/android/gms/internal/gr;

    :cond_3f
    return-void

    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public d()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/gl;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public d_()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gl;->d:Z

    return v0
.end method

.method public final e()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->b:Landroid/os/Looper;

    return-object v0
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()Ljava/lang/String;
.end method

.method public final p()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final q()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->j:[Ljava/lang/String;

    return-object v0
.end method

.method protected final r()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gl;->c()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method protected final s()Landroid/os/IInterface;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gl;->r()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->f:Landroid/os/IInterface;

    return-object v0
.end method
