.class public final Lcom/spotify/mobile/android/service/connections/b;
.super Lcom/spotify/mobile/android/service/connections/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/service/connections/i",
        "<",
        "Lcom/spotify/mobile/android/service/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:I

.field private c:Lcom/spotify/mobile/android/service/connections/c;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/service/ConnectDevice;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-class v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;

    const-class v1, Lcom/spotify/mobile/android/service/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/spotify/mobile/android/service/connections/i;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/service/connections/b;->b:I

    sget-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->a:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/b;->e:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/b;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/connections/b;Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/b;->e:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/connections/b;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/b;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/connections/b;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/b;->c:Lcom/spotify/mobile/android/service/connections/c;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/b;->e:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/b;->c:Lcom/spotify/mobile/android/service/connections/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/b;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/connections/b;->e:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/service/connections/c;->a(Ljava/util/List;Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)V

    :cond_11
    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/service/connections/b;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/b;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private n()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/service/ConnectDevice;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/g;->a()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const-string v0, "Not connected to the service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method private o()Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    invoke-static {}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->values()[Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    move-result-object v1

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/g;->b()I

    move-result v0

    aget-object v0, v1, v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    const-string v0, "Not connected to the service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-static {p1}, Lcom/spotify/mobile/android/service/h;->a(Landroid/os/IBinder;)Lcom/spotify/mobile/android/service/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(F)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/g;->a(F)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v0, "Not connected to the service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/g;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v0, "Not connected to the service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public final a()Z
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/spotify/mobile/android/service/connections/b;->b:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_20

    :try_start_6
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    iget v2, p0, Lcom/spotify/mobile/android/service/connections/b;->b:I

    invoke-interface {v0, v2}, Lcom/spotify/mobile/android/service/g;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/b;->c:Lcom/spotify/mobile/android/service/connections/c;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :catch_16
    move-exception v0

    const-string v0, "Not connected to the service"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_15

    :cond_20
    move v0, v1

    goto :goto_15
.end method

.method public final a(Lcom/spotify/mobile/android/service/connections/c;)Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/b;->c:Lcom/spotify/mobile/android/service/connections/c;

    new-instance v2, Lcom/spotify/mobile/android/service/connections/b$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/connections/b$1;-><init>(Lcom/spotify/mobile/android/service/connections/b;)V

    invoke-interface {v0, v2}, Lcom/spotify/mobile/android/service/g;->a(Lcom/spotify/mobile/android/service/d;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/service/connections/b;->b:I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :catch_16
    move-exception v0

    const-string v0, "Not connected to the service"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/b;->c:Lcom/spotify/mobile/android/service/connections/c;

    move v0, v1

    goto :goto_15
.end method

.method public final b()Lcom/spotify/mobile/android/service/ConnectDevice;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/g;->c()Lcom/spotify/mobile/android/service/ConnectDevice;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const-string v0, "Not connected to the service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/g;->b(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v0, "Not connected to the service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public final c()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/g;->e()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v0, "Not connected to the service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public final d()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/g;->f()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v0, "Not connected to the service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public final e()F
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/g;->g()F
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    const-string v0, "Not connected to the service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final f()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/g;->h()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v0, "Not connected to the service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public final g()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/g;->i()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v0, "Not connected to the service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public final h()Z
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/g;->j()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    const-string v0, "Not connected to the service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public final i()V
    .registers 4

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/connections/b;->o()Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/b;->c:Lcom/spotify/mobile/android/service/connections/c;

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/b;->c:Lcom/spotify/mobile/android/service/connections/c;

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/connections/b;->n()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/spotify/mobile/android/service/connections/c;->a(Ljava/util/List;Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)V

    :cond_19
    return-void
.end method
