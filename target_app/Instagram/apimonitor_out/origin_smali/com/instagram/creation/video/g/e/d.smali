.class Lcom/instagram/creation/video/g/e/d;
.super Ljava/lang/Object;
.source "TranscodeOutputSurfaceFrameHandler.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/creation/video/g/e/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/graphics/SurfaceTexture;

.field private final c:Lcom/instagram/creation/video/g/e/e;

.field private final d:I

.field private final e:Ljava/lang/Object;

.field private f:Z

.field private g:Lcom/instagram/creation/video/e/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/creation/video/g/e/d;

    sput-object v0, Lcom/instagram/creation/video/g/e/d;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Landroid/graphics/SurfaceTexture;Lcom/instagram/creation/video/g/e/e;Lcom/instagram/creation/video/e/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/d;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/instagram/creation/video/g/e/d;->b:Landroid/graphics/SurfaceTexture;

    iput-object p2, p0, Lcom/instagram/creation/video/g/e/d;->c:Lcom/instagram/creation/video/g/e/e;

    const/16 v0, 0x9c4

    iput v0, p0, Lcom/instagram/creation/video/g/e/d;->d:I

    iput-object p3, p0, Lcom/instagram/creation/video/g/e/d;->g:Lcom/instagram/creation/video/e/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget v2, p0, Lcom/instagram/creation/video/g/e/d;->d:I

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/instagram/creation/video/g/e/d;->e:Ljava/lang/Object;

    monitor-enter v4

    :goto_f
    :try_start_f
    iget-boolean v5, p0, Lcom/instagram/creation/video/g/e/d;->f:Z
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_32

    if-nez v5, :cond_35

    cmp-long v0, v0, v2

    if-gez v0, :cond_35

    :try_start_17
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/d;->e:Ljava/lang/Object;

    iget v1, p0, Lcom/instagram/creation/video/g/e/d;->d:I

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_32
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_22} :catch_24

    move-result-wide v0

    goto :goto_f

    :catch_24
    move-exception v0

    :try_start_25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_35
    :try_start_35
    iget-boolean v0, p0, Lcom/instagram/creation/video/g/e/d;->f:Z

    if-nez v0, :cond_41

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Surface frame wait timed out"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/g/e/d;->f:Z

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_32

    const-string v0, "before updateTexImage"

    invoke-static {v0}, Lcom/instagram/creation/base/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/video/g/e/d;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/g/e/d;->c:Lcom/instagram/creation/video/g/e/e;

    iget-object v1, p0, Lcom/instagram/creation/video/g/e/d;->b:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/instagram/creation/video/g/e/d;->g:Lcom/instagram/creation/video/e/c;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/g/e/e;->a(Landroid/graphics/SurfaceTexture;Lcom/instagram/creation/video/e/c;)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    sget-object v0, Lcom/instagram/creation/video/g/e/d;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/instagram/creation/video/g/e/d;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-boolean v0, p0, Lcom/instagram/creation/video/g/e/d;->f:Z

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_14
    const/4 v0, 0x1

    :try_start_15
    iput-boolean v0, p0, Lcom/instagram/creation/video/g/e/d;->f:Z

    iget-object v0, p0, Lcom/instagram/creation/video/g/e/d;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_11

    return-void
.end method
