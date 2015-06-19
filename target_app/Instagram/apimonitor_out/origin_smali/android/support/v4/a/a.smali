.class public abstract Landroid/support/v4/a/a;
.super Landroid/support/v4/a/c;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/a/c",
        "<TD;>;"
    }
.end annotation


# instance fields
.field volatile a:Landroid/support/v4/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/a",
            "<TD;>.android/support/v4/a/b;"
        }
    .end annotation
.end field

.field volatile b:Landroid/support/v4/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/a",
            "<TD;>.android/support/v4/a/b;"
        }
    .end annotation
.end field

.field c:J

.field d:J

.field e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/support/v4/a/c;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Landroid/support/v4/a/a;->d:J

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/a/c;->a()V

    invoke-virtual {p0}, Landroid/support/v4/a/a;->b()Z

    new-instance v0, Landroid/support/v4/a/b;

    invoke-direct {v0, p0}, Landroid/support/v4/a/b;-><init>(Landroid/support/v4/a/a;)V

    iput-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    invoke-virtual {p0}, Landroid/support/v4/a/a;->c()V

    return-void
.end method

.method final a(Landroid/support/v4/a/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/a",
            "<TD;>.android/support/v4/a/b;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/b;

    if-ne v0, p1, :cond_13

    invoke-virtual {p0}, Landroid/support/v4/a/a;->t()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/a/a;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/b;

    invoke-virtual {p0}, Landroid/support/v4/a/a;->c()V

    :cond_13
    return-void
.end method

.method final a(Landroid/support/v4/a/b;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/a",
            "<TD;>.android/support/v4/a/b;TD;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    if-eq v0, p1, :cond_8

    invoke-virtual {p0, p1}, Landroid/support/v4/a/a;->a(Landroid/support/v4/a/b;)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/a/a;->i()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/a/a;->s()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/a/a;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    invoke-virtual {p0, p2}, Landroid/support/v4/a/a;->a(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/a/c;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    if-eqz v0, :cond_20

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    iget-boolean v0, v0, Landroid/support/v4/a/b;->b:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_20
    iget-object v0, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/b;

    if-eqz v0, :cond_3d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/b;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/b;

    iget-boolean v0, v0, Landroid/support/v4/a/b;->b:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3d
    iget-wide v0, p0, Landroid/support/v4/a/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_63

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/support/v4/a/a;->c:J

    invoke-static {v0, v1, p3}, Landroid/support/v4/c/e;->a(JLjava/io/PrintWriter;)V

    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/support/v4/a/a;->d:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p3}, Landroid/support/v4/c/e;->a(JJLjava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_63
    return-void
.end method

.method public final b()Z
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/b;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    iget-boolean v1, v1, Landroid/support/v4/a/b;->b:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    iput-boolean v0, v1, Landroid/support/v4/a/b;->b:Z

    iget-object v1, p0, Landroid/support/v4/a/a;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1b
    iput-object v3, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    iget-boolean v1, v1, Landroid/support/v4/a/b;->b:Z

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    iput-boolean v0, v1, Landroid/support/v4/a/b;->b:Z

    iget-object v1, p0, Landroid/support/v4/a/a;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    goto :goto_1d

    :cond_32
    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    invoke-virtual {v0}, Landroid/support/v4/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    iput-object v1, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/b;

    :cond_3e
    iput-object v3, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    goto :goto_1d
.end method

.method final c()V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/b;

    if-nez v0, :cond_40

    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    iget-boolean v0, v0, Landroid/support/v4/a/b;->b:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/a/b;->b:Z

    iget-object v0, p0, Landroid/support/v4/a/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1a
    iget-wide v0, p0, Landroid/support/v4/a/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_41

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/a/a;->d:J

    iget-wide v4, p0, Landroid/support/v4/a/a;->c:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_41

    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/a/b;->b:Z

    iget-object v0, p0, Landroid/support/v4/a/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    iget-wide v2, p0, Landroid/support/v4/a/a;->d:J

    iget-wide v4, p0, Landroid/support/v4/a/a;->c:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_40
    :goto_40
    return-void

    :cond_41
    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/b;

    sget-object v1, Landroid/support/v4/a/i;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/b;->a(Ljava/util/concurrent/Executor;)Landroid/support/v4/a/i;

    goto :goto_40
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected final e()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/a/a;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
