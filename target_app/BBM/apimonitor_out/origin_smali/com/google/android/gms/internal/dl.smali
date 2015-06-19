.class public final Lcom/google/android/gms/internal/dl;
.super Lcom/google/android/gms/internal/eh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/eh",
        "<",
        "Lcom/google/android/gms/internal/dn;",
        ">;"
    }
.end annotation


# instance fields
.field private final vi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/eh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/dl;->vi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/a$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateListResult;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    new-instance v1, Lcom/google/android/gms/internal/dl$c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/dl$c;-><init>(Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/dn;->a(Lcom/google/android/gms/internal/dm;)V
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

.method public final a(Lcom/google/android/gms/common/api/a$c;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    new-instance v1, Lcom/google/android/gms/internal/dl$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/dl$a;-><init>(Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/dn;->b(Lcom/google/android/gms/internal/dm;I)V
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

.method public final a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    new-instance v1, Lcom/google/android/gms/internal/dl$e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/dl$e;-><init>(Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/dn;->a(Lcom/google/android/gms/internal/dm;ILjava/lang/String;[B)V
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

.method public final a(Lcom/google/android/gms/common/api/a$c;I[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I[B)V"
        }
    .end annotation

    if-nez p1, :cond_e

    const/4 v0, 0x0

    move-object v1, v0

    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/dn;->a(Lcom/google/android/gms/internal/dm;I[B)V

    :goto_d
    return-void

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/dl$e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/dl$e;-><init>(Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/common/api/a$c;)V
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

.method protected final a(Lcom/google/android/gms/internal/en;Lcom/google/android/gms/internal/eh$e;)V
    .registers 9

    const v2, 0x41f6b8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/dl;->vi:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->ea()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/en;->a(Lcom/google/android/gms/internal/em;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected final aF()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.appstate.service.START"

    return-object v0
.end method

.method protected final aG()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.appstate.internal.IAppStateService"

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/common/api/a$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    new-instance v1, Lcom/google/android/gms/internal/dl$g;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/dl$g;-><init>(Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/dn;->b(Lcom/google/android/gms/internal/dm;)V
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

.method public final b(Lcom/google/android/gms/common/api/a$c;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    new-instance v1, Lcom/google/android/gms/internal/dl$e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/dl$e;-><init>(Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/dn;->a(Lcom/google/android/gms/internal/dm;I)V
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

.method protected final varargs b([Ljava/lang/String;)V
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

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method public final cN()I
    .registers 4

    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dn;->cN()I
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

.method public final cO()I
    .registers 4

    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->eb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dn;->cO()I
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

.method protected final synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dl;->s(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dn;

    move-result-object v0

    return-object v0
.end method

.method protected final s(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dn;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/dn$a;->u(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dn;

    move-result-object v0

    return-object v0
.end method
