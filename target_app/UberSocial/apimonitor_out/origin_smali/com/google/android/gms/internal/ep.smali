.class public final Lcom/google/android/gms/internal/ep;
.super Lcom/google/android/gms/internal/gl;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;[Ljava/lang/String;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ep;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fg;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/fi;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fg;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/t;)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ep;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fg;

    new-instance v1, Lcom/google/android/gms/internal/es;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/es;-><init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fg;->a(Lcom/google/android/gms/internal/fc;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/t;I)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ep;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fg;

    new-instance v1, Lcom/google/android/gms/internal/eq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/eq;-><init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/fg;->b(Lcom/google/android/gms/internal/fc;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/t;ILjava/lang/String;[B)V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ep;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fg;

    new-instance v1, Lcom/google/android/gms/internal/ev;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ev;-><init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/fg;->a(Lcom/google/android/gms/internal/fc;ILjava/lang/String;[B)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/t;I[B)V
    .registers 6

    if-nez p1, :cond_e

    const/4 v0, 0x0

    move-object v1, v0

    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ep;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fg;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/fg;->a(Lcom/google/android/gms/internal/fc;I[B)V

    :goto_d
    return-void

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/ev;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ev;-><init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_15

    move-object v1, v0

    goto :goto_4

    :catch_15
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method protected a(Lcom/google/android/gms/internal/hh;Lcom/google/android/gms/internal/gq;)V
    .registers 9

    const v2, 0x41f6b8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ep;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ep;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ep;->q()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/hh;->a(Lcom/google/android/gms/internal/he;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_4
    array-length v4, p1

    if-ge v0, v4, :cond_15

    aget-object v4, p1, v0

    const-string v5, "https://www.googleapis.com/auth/appstate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move v2, v3

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_15
    const-string v0, "App State APIs requires %s to function."

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "https://www.googleapis.com/auth/appstate"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ep;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fg;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/t;)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ep;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fg;

    new-instance v1, Lcom/google/android/gms/internal/ez;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ez;-><init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fg;->b(Lcom/google/android/gms/internal/fc;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public b(Lcom/google/android/gms/common/api/t;I)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ep;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fg;

    new-instance v1, Lcom/google/android/gms/internal/ev;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ev;-><init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/fg;->a(Lcom/google/android/gms/internal/fc;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.appstate.internal.IAppStateService"

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.appstate.service.START"

    return-object v0
.end method

.method public h()I
    .registers 4

    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ep;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fg;->a()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    :goto_b
    return v0

    :catch_c
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v2, "service died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_b
.end method

.method public i()I
    .registers 4

    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ep;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fg;->b()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    :goto_b
    return v0

    :catch_c
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v2, "service died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_b
.end method
