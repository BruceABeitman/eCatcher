.class public final Lcom/spotify/mobile/android/service/managers/ConnectManager;
.super Lcom/spotify/mobile/android/service/h;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/spotify/mobile/android/util/cs;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/service/ConnectDevice;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/spotify/mobile/android/service/ConnectDevice;

.field private e:Lcom/spotify/mobile/android/service/ConnectDevice;

.field private f:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/spotify/mobile/android/service/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->c:Ljava/util/List;

    sget-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->a:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->f:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->g:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->h:Ljava/lang/String;

    iput v3, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->i:I

    iput-object p1, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a:Landroid/content/Context;

    new-instance v0, Lcom/spotify/mobile/android/util/cs;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a:Landroid/content/Context;

    new-instance v2, Lcom/spotify/mobile/android/service/managers/b;

    invoke-direct {v2, p0, v3}, Lcom/spotify/mobile/android/service/managers/b;-><init>(Lcom/spotify/mobile/android/service/managers/ConnectManager;B)V

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->b:Lcom/spotify/mobile/android/util/cs;

    return-void
.end method

.method private declared-synchronized a(Landroid/database/Cursor;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object v4, v1

    :goto_e
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->h:Ljava/lang/String;

    invoke-static {p1, v0, v6}, Lcom/spotify/mobile/android/service/ConnectDevice;->a(Landroid/database/Cursor;Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/service/ConnectDevice;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->d()Z

    move-result v6

    if-eqz v6, :cond_26

    move-object v4, v0

    :cond_26
    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->j()Z

    move-result v6

    if-eqz v6, :cond_ac

    :goto_2c
    move-object v1, v0

    goto :goto_e

    :cond_2e
    iput-object v5, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->c:Ljava/util/List;

    iput-object v4, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->d:Lcom/spotify/mobile/android/service/ConnectDevice;

    iput-object v1, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->e:Lcom/spotify/mobile/android/service/ConnectDevice;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_a3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->e:Lcom/spotify/mobile/android/service/ConnectDevice;

    if-eqz v0, :cond_95

    move v0, v2

    :goto_41
    if-eqz v0, :cond_97

    sget-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->e:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    :goto_45
    iput-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->f:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->d:Lcom/spotify/mobile/android/service/ConnectDevice;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->b(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->d:Lcom/spotify/mobile/android/service/ConnectDevice;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/y;->a(Lcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/service/ConnectDevice;)V

    :cond_56
    invoke-direct {p0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->m()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->d:Lcom/spotify/mobile/android/service/ConnectDevice;

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->d:Lcom/spotify/mobile/android/service/ConnectDevice;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->a()Ljava/lang/String;

    move-result-object v0

    :goto_63
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DeviceCount:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ActiveDevice:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {}, Lcom/spotify/mobile/android/util/y;->a()V
    :try_end_93
    .catchall {:try_start_4 .. :try_end_93} :catchall_a9

    monitor-exit p0

    return-void

    :cond_95
    move v0, v3

    goto :goto_41

    :cond_97
    :try_start_97
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->j()Z

    move-result v0

    if-eqz v0, :cond_a0

    sget-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->c:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    goto :goto_45

    :cond_a0
    sget-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->d:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    goto :goto_45

    :cond_a3
    sget-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->b:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    goto :goto_45

    :cond_a6
    const-string v0, "No active device"
    :try_end_a8
    .catchall {:try_start_97 .. :try_end_a8} :catchall_a9

    goto :goto_63

    :catchall_a9
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_ac
    move-object v0, v1

    goto/16 :goto_2c
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/managers/ConnectManager;Landroid/database/Cursor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method private m()V
    .registers 6

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_35

    :try_start_a
    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/d;

    iget-object v3, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->f:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->ordinal()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/spotify/mobile/android/service/d;->a(Ljava/util/List;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1d} :catch_21

    :goto_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_21
    move-exception v0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->g:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    const-string v0, "ConnectManager observer died"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    :cond_35
    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/service/d;)I
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->g:Landroid/util/SparseArray;

    iget v1, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->i:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->f:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->ordinal()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/spotify/mobile/android/service/d;->a(Ljava/util/List;I)V

    iget v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->i:I

    return v0
.end method

.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/service/ConnectDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->c:Ljava/util/List;

    return-object v0
.end method

.method public final a(F)V
    .registers 6

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/spotify/mobile/android/util/y;->a(F)F

    move-result v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "volume"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->h:Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_active"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/spotify/mobile/android/provider/d;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final a(Z)V
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/spotify/mobile/android/util/y;->a()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_playback_capable"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/d;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->f:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->ordinal()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/spotify/mobile/android/provider/d;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final c()Lcom/spotify/mobile/android/service/ConnectDevice;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->d:Lcom/spotify/mobile/android/service/ConnectDevice;

    return-object v0
.end method

.method public final d()Lcom/spotify/mobile/android/service/ConnectDevice;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->e:Lcom/spotify/mobile/android/service/ConnectDevice;

    return-object v0
.end method

.method public final e()V
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/spotify/mobile/android/util/y;->a()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "device_discovery"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/d;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final f()V
    .registers 2

    const-string v0, "local_device"

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final g()F
    .registers 9

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "volume"

    aput-object v1, v2, v7

    sget-object v1, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    :goto_22
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_26
    move v0, v6

    goto :goto_22
.end method

.method public final h()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->g()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_10

    const/high16 v1, 0x3d00

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a(F)V

    :cond_10
    return-void
.end method

.method public final i()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->g()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_f

    const/high16 v1, 0x3d00

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a(F)V

    :cond_f
    return-void
.end method

.method public final j()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->d:Lcom/spotify/mobile/android/service/ConnectDevice;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->d:Lcom/spotify/mobile/android/service/ConnectDevice;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final k()V
    .registers 5

    invoke-static {}, Lcom/spotify/mobile/android/util/y;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->b:Lcom/spotify/mobile/android/util/cs;

    sget-object v1, Lcom/spotify/mobile/android/provider/d;->a:Landroid/net/Uri;

    sget-object v2, Lcom/spotify/mobile/android/service/ConnectDevice;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cs;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ConnectManager started"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final l()V
    .registers 3

    invoke-static {}, Lcom/spotify/mobile/android/util/y;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/ConnectManager;->b:Lcom/spotify/mobile/android/util/cs;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cs;->b()V

    const-string v0, "ConnectManager started"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
