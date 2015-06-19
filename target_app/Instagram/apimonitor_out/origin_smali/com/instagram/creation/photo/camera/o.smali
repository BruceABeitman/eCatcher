.class final Lcom/instagram/creation/photo/camera/o;
.super Ljava/lang/Thread;
.source "CameraFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/creation/photo/camera/t;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/creation/photo/camera/o;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/o;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/o;->start()V

    return-void
.end method

.method private b()V
    .registers 2

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-result v0

    if-nez v0, :cond_f

    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_1

    :catch_d
    move-exception v0

    goto :goto_1

    :cond_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a([BIII)Ljava/lang/String;
    .registers 8

    new-instance v0, Lcom/instagram/creation/photo/camera/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/creation/photo/camera/t;-><init>(B)V

    iput-object p1, v0, Lcom/instagram/creation/photo/camera/t;->a:[B

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/instagram/creation/photo/camera/t;->b:Landroid/location/Location;

    iput p2, v0, Lcom/instagram/creation/photo/camera/t;->c:I

    iput p3, v0, Lcom/instagram/creation/photo/camera/t;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/instagram/creation/photo/camera/t;->e:J

    iget-wide v1, v0, Lcom/instagram/creation/photo/camera/t;->e:J

    invoke-static {v1, v2}, Lcom/instagram/camera/h;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/photo/camera/t;->f:Ljava/lang/String;

    iput p4, v0, Lcom/instagram/creation/photo/camera/t;->g:I

    monitor-enter p0

    :goto_20
    :try_start_20
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_3b

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2f

    :try_start_29
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_3b
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_20

    :catch_2d
    move-exception v1

    goto :goto_20

    :cond_2f
    :try_start_2f
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_3b

    iget-object v0, v0, Lcom/instagram/creation/photo/camera/t;->f:Ljava/lang/String;

    return-object v0

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/o;->b()V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/o;->c:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    :try_start_b
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/o;->join()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_12

    :goto_e
    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method public final run()V
    .registers 12

    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-boolean v1, p0, Lcom/instagram/creation/photo/camera/o;->c:Z

    if-eqz v1, :cond_12

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    return-void

    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_95

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_17

    goto :goto_0

    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/o;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/instagram/creation/photo/camera/t;

    move-object v7, v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_17

    const/4 v1, 0x1

    new-array v8, v1, [I

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/k/b/a;->x()Z

    move-result v1

    invoke-static {}, Lcom/instagram/creation/photo/b/g;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_5c

    iget-object v1, v7, Lcom/instagram/creation/photo/camera/t;->f:Ljava/lang/String;

    const-string v3, ".jpg"

    invoke-static {v1, v3}, Lcom/instagram/creation/photo/b/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3f
    iget-object v3, v7, Lcom/instagram/creation/photo/camera/t;->a:[B

    invoke-static {v2, v1, v3, v8}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Ljava/lang/String;Ljava/lang/String;[B[I)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_5f

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/o;->a:Lcom/instagram/creation/photo/camera/c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/instagram/creation/photo/camera/c;->a(Lcom/instagram/creation/photo/camera/c;Landroid/net/Uri;)Landroid/net/Uri;

    :goto_4d
    monitor-enter p0

    :try_start_4e
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/o;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_59

    goto :goto_0

    :catchall_59
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_5c
    const-string v1, "temp.jpg"

    goto :goto_3f

    :cond_5f
    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/k/b/a;->x()Z

    move-result v2

    if-eqz v2, :cond_8b

    iget-object v9, p0, Lcom/instagram/creation/photo/camera/o;->a:Lcom/instagram/creation/photo/camera/c;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/o;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->E(Lcom/instagram/creation/photo/camera/c;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v7, Lcom/instagram/creation/photo/camera/t;->f:Ljava/lang/String;

    iget-wide v3, v7, Lcom/instagram/creation/photo/camera/t;->e:J

    iget-object v5, v7, Lcom/instagram/creation/photo/camera/t;->b:Landroid/location/Location;

    invoke-static {}, Lcom/instagram/creation/photo/b/g;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v7, Lcom/instagram/creation/photo/camera/t;->f:Ljava/lang/String;

    const-string v10, ".jpg"

    invoke-static {v7, v10}, Lcom/instagram/creation/photo/b/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;[I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/instagram/creation/photo/camera/c;->a(Lcom/instagram/creation/photo/camera/c;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_4d

    :cond_8b
    iget-object v2, p0, Lcom/instagram/creation/photo/camera/o;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/instagram/creation/photo/camera/c;->a(Lcom/instagram/creation/photo/camera/c;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_4d

    :catch_95
    move-exception v1

    goto/16 :goto_15
.end method
