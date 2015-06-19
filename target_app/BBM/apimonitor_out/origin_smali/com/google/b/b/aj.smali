.class final Lcom/google/b/b/aj;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/b/b/ba;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/b/b/ba",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:Lcom/google/b/b/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/ba",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/b/f/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/f/a/r",
            "<TV;>;"
        }
    .end annotation
.end field

.field final c:Lcom/google/b/a/q;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/b/b/n;->j()Lcom/google/b/b/ba;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/b/b/aj;-><init>(Lcom/google/b/b/ba;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/b/b/ba;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/ba",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/b/f/a/r;->a()Lcom/google/b/f/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/aj;->b:Lcom/google/b/f/a/r;

    new-instance v0, Lcom/google/b/a/q;

    invoke-direct {v0}, Lcom/google/b/a/q;-><init>()V

    iput-object v0, p0, Lcom/google/b/b/aj;->c:Lcom/google/b/a/q;

    iput-object p1, p0, Lcom/google/b/b/aj;->a:Lcom/google/b/b/ba;

    return-void
.end method

.method private static a(Lcom/google/b/f/a/r;Ljava/lang/Throwable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/f/a/r",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/b/f/a/r;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/google/b/b/aj;->a:Lcom/google/b/b/ba;

    invoke-interface {v0}, Lcom/google/b/b/ba;->a()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/b/am;)Lcom/google/b/b/ba;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)",
            "Lcom/google/b/b/ba",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/b/b/k;)Lcom/google/b/f/a/l;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/b/b/k",
            "<-TK;TV;>;)",
            "Lcom/google/b/f/a/l",
            "<TV;>;"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/b/aj;->c:Lcom/google/b/a/q;

    iget-boolean v0, v2, Lcom/google/b/a/q;->b:Z

    if-nez v0, :cond_2c

    move v0, v1

    :goto_8
    const-string v3, "This stopwatch is already running; it cannot be started more than once."

    invoke-static {v0, v3}, Lcom/google/b/a/o;->b(ZLjava/lang/Object;)V

    iput-boolean v1, v2, Lcom/google/b/a/q;->b:Z

    iget-object v0, v2, Lcom/google/b/a/q;->a:Lcom/google/b/a/v;

    invoke-virtual {v0}, Lcom/google/b/a/v;->a()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/google/b/a/q;->c:J

    iget-object v0, p0, Lcom/google/b/b/aj;->a:Lcom/google/b/b/ba;

    invoke-interface {v0}, Lcom/google/b/b/ba;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_33

    :try_start_1f
    invoke-virtual {p2}, Lcom/google/b/b/k;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/b/aj;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v0, p0, Lcom/google/b/b/aj;->b:Lcom/google/b/f/a/r;

    :goto_2b
    return-object v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_8

    :cond_2e
    invoke-static {v0}, Lcom/google/b/f/a/g;->a(Ljava/lang/Object;)Lcom/google/b/f/a/l;

    move-result-object v0

    goto :goto_2b

    :cond_33
    invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/b/b/k;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/b/f/a/g;->a(Ljava/lang/Object;)Lcom/google/b/f/a/l;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_40} :catch_42

    move-result-object v0

    goto :goto_2b

    :catch_42
    move-exception v0

    move-object v1, v0

    instance-of v0, v1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_4f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4f
    invoke-virtual {p0, v1}, Lcom/google/b/b/aj;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/google/b/b/aj;->b:Lcom/google/b/f/a/r;

    goto :goto_2b

    :cond_58
    invoke-static {}, Lcom/google/b/f/a/r;->a()Lcom/google/b/f/a/r;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/b/b/aj;->a(Lcom/google/b/f/a/r;Ljava/lang/Throwable;)Z

    goto :goto_2b
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/google/b/b/aj;->b(Ljava/lang/Object;)Z

    :goto_5
    return-void

    :cond_6
    invoke-static {}, Lcom/google/b/b/n;->j()Lcom/google/b/b/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/aj;->a:Lcom/google/b/b/ba;

    goto :goto_5
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/b/b/aj;->b:Lcom/google/b/f/a/r;

    invoke-static {v0, p1}, Lcom/google/b/b/aj;->a(Lcom/google/b/f/a/r;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/google/b/b/am;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/b/aj;->b:Lcom/google/b/f/a/r;

    invoke-virtual {v0, p1}, Lcom/google/b/f/a/r;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/b/b/aj;->a:Lcom/google/b/b/ba;

    invoke-interface {v0}, Lcom/google/b/b/ba;->d()Z

    move-result v0

    return v0
.end method

.method public final e()J
    .registers 5

    iget-object v0, p0, Lcom/google/b/b/aj;->c:Lcom/google/b/a/q;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/google/b/a/q;->a()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/b/aj;->a:Lcom/google/b/b/ba;

    invoke-interface {v0}, Lcom/google/b/b/ba;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
