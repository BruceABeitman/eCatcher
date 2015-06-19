.class public final Lcom/bbm/util/db;
.super Lcom/bbm/d/fd;
.source "RecyclingImage.java"


# instance fields
.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method private declared-synchronized d()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/bbm/util/db;->d:I

    if-gtz v0, :cond_1e

    iget v0, p0, Lcom/bbm/util/db;->e:I

    if-gtz v0, :cond_1e

    iget-boolean v0, p0, Lcom/bbm/util/db;->f:Z

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/bbm/util/db;->e()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/bbm/util/db;->b()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/bbm/util/db;->b()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1c

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_e

    :try_start_3
    iget v0, p0, Lcom/bbm/util/db;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bbm/util/db;->d:I

    :goto_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    invoke-direct {p0}, Lcom/bbm/util/db;->d()V

    return-void

    :cond_e
    :try_start_e
    iget v0, p0, Lcom/bbm/util/db;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bbm/util/db;->d:I
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_15

    goto :goto_9

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
