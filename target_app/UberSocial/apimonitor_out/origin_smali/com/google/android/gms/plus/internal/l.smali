.class public Lcom/google/android/gms/plus/internal/l;
.super Lcom/google/android/gms/internal/gl;

# interfaces
.implements Lcom/google/android/gms/common/d;


# instance fields
.field private a:Lcom/google/android/gms/plus/a/b/a;

.field private final b:Lcom/google/android/gms/plus/internal/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/plus/internal/h;)V
    .registers 12

    invoke-virtual {p5}, Lcom/google/android/gms/plus/internal/h;->c()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;[Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/l;->b:Lcom/google/android/gms/plus/internal/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;Lcom/google/android/gms/plus/internal/h;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/go;

    invoke-direct {v3, p2}, Lcom/google/android/gms/internal/go;-><init>(Lcom/google/android/gms/common/e;)V

    new-instance v4, Lcom/google/android/gms/internal/gs;

    invoke-direct {v4, p3}, Lcom/google/android/gms/internal/gs;-><init>(Lcom/google/android/gms/common/f;)V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/l;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/plus/internal/h;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/i;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/plus/internal/j;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/i;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5

    if-nez p1, :cond_18

    if-eqz p3, :cond_18

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ir;->a([B)Lcom/google/android/gms/internal/ir;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/l;->a:Lcom/google/android/gms/plus/a/b/a;

    :cond_18
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gl;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/t;)V
    .registers 9

    const/4 v3, 0x0

    const/16 v2, 0x14

    const-string v6, "me"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/common/api/t;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/t;ILjava/lang/String;)V
    .registers 10

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->r()V

    new-instance v1, Lcom/google/android/gms/plus/internal/q;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/q;-><init>(Lcom/google/android/gms/plus/internal/l;Lcom/google/android/gms/common/api/t;)V

    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/i;

    const/4 v2, 0x1

    const/4 v4, -0x1

    move v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/i;->a(Lcom/google/android/gms/plus/internal/b;IIILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->b(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/q;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public a(Lcom/google/android/gms/common/api/t;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->r()V

    if-eqz p1, :cond_1a

    new-instance v1, Lcom/google/android/gms/plus/internal/n;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/n;-><init>(Lcom/google/android/gms/plus/internal/l;Lcom/google/android/gms/common/api/t;)V

    :goto_b
    :try_start_b
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/i;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/i;->a(Lcom/google/android/gms/plus/internal/b;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_1c

    :goto_19
    return-void

    :cond_1a
    move-object v1, v7

    goto :goto_b

    :catch_1c
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->b(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-virtual {v1, v0, v7, v7}, Lcom/google/android/gms/plus/internal/n;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/plus/a/a/c;)V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->r()V

    if-eqz p1, :cond_1c

    new-instance v0, Lcom/google/android/gms/plus/internal/m;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/plus/internal/m;-><init>(Lcom/google/android/gms/plus/internal/l;Lcom/google/android/gms/common/api/t;)V

    move-object v1, v0

    :goto_c
    :try_start_c
    check-cast p2, Lcom/google/android/gms/internal/io;

    invoke-static {p2}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fb;)Lcom/google/android/gms/internal/fh;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/i;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/plus/internal/i;->a(Lcom/google/android/gms/plus/internal/b;Lcom/google/android/gms/internal/fh;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1b} :catch_1e

    :goto_1b
    return-void

    :cond_1c
    move-object v1, v2

    goto :goto_c

    :catch_1e
    move-exception v0

    if-nez v1, :cond_27

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_27
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/plus/internal/m;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1b
.end method

.method public a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/common/api/t;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/t;Ljava/util/Collection;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->r()V

    new-instance v1, Lcom/google/android/gms/plus/internal/q;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/q;-><init>(Lcom/google/android/gms/plus/internal/l;Lcom/google/android/gms/common/api/t;)V

    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/i;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/plus/internal/i;->a(Lcom/google/android/gms/plus/internal/b;Ljava/util/List;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->b(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/q;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public a(Lcom/google/android/gms/common/api/t;[Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/common/api/t;Ljava/util/Collection;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/hh;Lcom/google/android/gms/internal/gq;)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/l;->b:Lcom/google/android/gms/plus/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->k()Landroid/os/Bundle;

    move-result-object v7

    const-string v0, "request_visible_actions"

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/l;->b:Lcom/google/android/gms/plus/internal/h;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/internal/h;->d()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const v2, 0x41f6b8

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/l;->b:Lcom/google/android/gms/plus/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/l;->b:Lcom/google/android/gms/plus/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->q()[Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/l;->b:Lcom/google/android/gms/plus/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->b()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/hh;->a(Lcom/google/android/gms/internal/he;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->r()V

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/i;

    invoke-interface {v0, p1}, Lcom/google/android/gms/plus/internal/i;->a(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/l;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/i;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/t;)V
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->r()V

    new-instance v1, Lcom/google/android/gms/plus/internal/q;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/q;-><init>(Lcom/google/android/gms/plus/internal/l;Lcom/google/android/gms/common/api/t;)V

    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/i;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/i;->a(Lcom/google/android/gms/plus/internal/b;IIILjava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->b(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/plus/internal/q;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->q()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/google/android/gms/common/api/t;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->r()V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->j()V

    new-instance v1, Lcom/google/android/gms/plus/internal/s;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/s;-><init>(Lcom/google/android/gms/plus/internal/l;Lcom/google/android/gms/common/api/t;)V

    :try_start_b
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/i;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/internal/i;->b(Lcom/google/android/gms/plus/internal/b;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/s;->a(ILandroid/os/Bundle;)V

    goto :goto_14
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.plus.service.START"

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->r()V

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/i;

    invoke-interface {v0}, Lcom/google/android/gms/plus/internal/i;->a()Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    move-result-object v0

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public i()Lcom/google/android/gms/plus/a/b/a;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->r()V

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/l;->a:Lcom/google/android/gms/plus/a/b/a;

    return-object v0
.end method

.method public j()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->r()V

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/l;->a:Lcom/google/android/gms/plus/a/b/a;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/l;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/i;

    invoke-interface {v0}, Lcom/google/android/gms/plus/internal/i;->b()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
