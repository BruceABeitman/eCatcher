.class public final Lcom/bbm/util/fg;
.super Ljava/lang/Object;
.source "VoiceNoteRecorder.java"


# instance fields
.field public a:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Landroid/media/MediaRecorder;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public c:J

.field public d:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Lcom/bbm/util/fi;

.field private final g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/util/fg;->a:Lcom/google/b/a/l;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bbm/util/fg;->g:Landroid/os/Handler;

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/util/fg;->d:Lcom/google/b/a/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/util/fg;->e:Z

    iput-object p1, p0, Lcom/bbm/util/fg;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/util/fg;->a:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bbm/util/fg;->a:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/util/fg;->a:Lcom/google/b/a/l;

    :cond_19
    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/fg;->a:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/bbm/util/fg;->e:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bbm/util/fg;->a:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRecorder;

    :try_start_14
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_17} :catch_27

    :goto_17
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bbm/util/fg;->e:Z

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :cond_20
    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/util/fg;->a:Lcom/google/b/a/l;

    return-void

    :catch_27
    move-exception v1

    goto :goto_17
.end method

.method public final c()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bbm/util/fg;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/util/fg;->f:Lcom/bbm/util/fi;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bbm/util/fg;->f:Lcom/bbm/util/fi;

    invoke-interface {v0}, Lcom/bbm/util/fi;->a()V

    :cond_17
    invoke-virtual {p0}, Lcom/bbm/util/fg;->b()V

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/bbm/util/fg;->g:Landroid/os/Handler;

    new-instance v1, Lcom/bbm/util/fh;

    invoke-direct {v1, p0}, Lcom/bbm/util/fh;-><init>(Lcom/bbm/util/fg;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1a
.end method
