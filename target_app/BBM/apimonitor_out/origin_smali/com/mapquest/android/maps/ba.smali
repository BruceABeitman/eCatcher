.class final Lcom/mapquest/android/maps/ba;
.super Ljava/lang/Object;
.source "MemoryTileCache.java"

# interfaces
.implements Lcom/mapquest/android/maps/x;


# instance fields
.field a:Lcom/mapquest/android/maps/bc;

.field private b:Lcom/mapquest/android/maps/bb;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/ba;->a:Lcom/mapquest/android/maps/bc;

    new-instance v0, Lcom/mapquest/android/maps/bb;

    invoke-direct {v0, p0, p1}, Lcom/mapquest/android/maps/bb;-><init>(Lcom/mapquest/android/maps/ba;I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    iget-object v0, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/ba;->c:Ljava/util/Map;

    new-instance v0, Lcom/mapquest/android/maps/bc;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/bc;-><init>(Lcom/mapquest/android/maps/ba;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ba;->a:Lcom/mapquest/android/maps/bc;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v1, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/bb;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1f

    goto :goto_d

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/bb;->clear()V

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_1f

    return-void
.end method

.method public final a(Lcom/mapquest/android/maps/ca;)V
    .registers 6

    invoke-virtual {p1}, Lcom/mapquest/android/maps/ca;->a()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p1, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bb;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/mapquest/android/maps/ca;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    monitor-enter v1

    :try_start_18
    iget-object v2, p1, Lcom/mapquest/android/maps/ca;->f:Lcom/mapquest/android/maps/cf;

    sget-object v3, Lcom/mapquest/android/maps/cf;->c:Lcom/mapquest/android/maps/cf;

    if-ne v2, v3, :cond_2f

    iget-boolean v2, p0, Lcom/mapquest/android/maps/ba;->d:Z

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    iget-object v3, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    iget v3, v3, Lcom/mapquest/android/maps/bb;->a:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/mapquest/android/maps/bb;->a:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mapquest/android/maps/ba;->d:Z

    :cond_2f
    iget-object v2, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    invoke-virtual {v2, v0}, Lcom/mapquest/android/maps/bb;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_39

    goto :goto_6

    :catchall_39
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3c
    :try_start_3c
    iget-object v2, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    iget-object v3, p1, Lcom/mapquest/android/maps/ca;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0, v3}, Lcom/mapquest/android/maps/bb;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_39

    goto :goto_6
.end method

.method public final b(Lcom/mapquest/android/maps/ca;)Lcom/mapquest/android/maps/ca;
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move-object p1, v1

    :goto_4
    return-object p1

    :cond_5
    iget-object v0, p1, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;

    if-nez v0, :cond_b

    move-object p1, v1

    goto :goto_4

    :cond_b
    iget-object v2, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    monitor-enter v2

    :try_start_e
    iget-object v3, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    invoke-virtual {v3, v0}, Lcom/mapquest/android/maps/bb;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1b

    monitor-exit v2

    move-object p1, v1

    goto :goto_4

    :cond_1b
    iput-object v0, p1, Lcom/mapquest/android/maps/ca;->g:Landroid/graphics/Bitmap;

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1f

    goto :goto_4

    :catchall_1f
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final b()V
    .registers 1

    invoke-virtual {p0}, Lcom/mapquest/android/maps/ba;->a()V

    return-void
.end method

.method public final c(Lcom/mapquest/android/maps/ca;)V
    .registers 5

    iget-object v1, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    iget-object v2, p1, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/bb;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/mapquest/android/maps/ba;->a:Lcom/mapquest/android/maps/bc;

    invoke-virtual {v2, v0}, Lcom/mapquest/android/maps/bc;->a(Landroid/graphics/Bitmap;)V

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d(Lcom/mapquest/android/maps/ca;)Z
    .registers 4

    iget-object v0, p0, Lcom/mapquest/android/maps/ba;->b:Lcom/mapquest/android/maps/bb;

    iget-object v1, p1, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/bb;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
