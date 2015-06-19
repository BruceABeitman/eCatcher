.class final Lcom/spotify/mobile/android/spotlets/search/loader/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/search/loader/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/spotlets/search/loader/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Ljava/lang/Runnable;

.field private c:Z

.field private final d:J

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private f:J

.field private final g:Landroid/os/Handler;

.field private h:Lcom/spotify/mobile/android/spotlets/search/loader/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/loader/c",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/spotify/mobile/android/spotlets/search/loader/c;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/spotify/mobile/android/spotlets/search/loader/c",
            "<TT;>;)V"
        }
    .end annotation

    const-wide/16 v2, 0x1f4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/b$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/loader/b$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->b:Ljava/lang/Runnable;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/c;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/c;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->g:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2b

    const/4 v0, 0x1

    :goto_23
    const-string v1, "inter-request waiting time should be >=0"

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    iput-wide v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->d:J

    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method private d()V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->a:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->a:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method private e()V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->g:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2b

    new-instance v2, Ljava/lang/IllegalThreadStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Throttler is using "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", but illegal usage attempt came from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2b
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 5

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/b;->e()V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->c:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->e:Ljava/lang/Object;

    if-nez v0, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->f:J

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/c;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/spotify/mobile/android/spotlets/search/loader/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/loader/c;->a(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/b;->d()V

    const/4 v0, 0x1

    goto :goto_c
.end method

.method public final a(Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/b;->e()V

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->c:Z

    if-eqz v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->f:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_20

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/b;->a()Z

    move v0, v1

    goto :goto_c

    :cond_20
    const-string v3, "Queued request is now %s (was: %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->a:Z

    if-nez v2, :cond_c

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->a:Z

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->b:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->f:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c
.end method

.method public final b()V
    .registers 3

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/b;->e()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->f:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->e:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/b;->d()V

    return-void
.end method

.method public final c()V
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/b;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/b;->c:Z

    return-void
.end method
