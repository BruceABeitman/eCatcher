.class final Lcom/instagram/common/u/c/f;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/u/c/d;

.field private final b:Ljava/lang/Runnable;

.field private final c:J

.field private volatile d:J

.field private volatile e:J


# direct methods
.method constructor <init>(Lcom/instagram/common/u/c/d;Ljava/lang/Runnable;)V
    .registers 7

    const-wide/16 v2, -0x1

    iput-object p1, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/instagram/common/u/c/f;->b:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/instagram/common/u/c/d;->a(Lcom/instagram/common/u/c/d;)Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/common/u/c/f;->c:J

    iput-wide v2, p0, Lcom/instagram/common/u/c/f;->d:J

    iput-wide v2, p0, Lcom/instagram/common/u/c/f;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v0}, Lcom/instagram/common/u/c/d;->a(Lcom/instagram/common/u/c/d;)Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/common/u/c/f;->d:J

    iget-object v0, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v0}, Lcom/instagram/common/u/c/d;->b(Lcom/instagram/common/u/c/d;)I

    move-result v0

    if-eq v0, v7, :cond_35

    iget-wide v0, p0, Lcom/instagram/common/u/c/f;->d:J

    iget-wide v2, p0, Lcom/instagram/common/u/c/f;->c:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v2}, Lcom/instagram/common/u/c/d;->b(Lcom/instagram/common/u/c/d;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_35

    iget-object v0, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v0}, Lcom/instagram/common/u/c/d;->d(Lcom/instagram/common/u/c/d;)Lcom/facebook/d/b/c;

    move-result-object v0

    const-string v1, "dispatch time exceeded limit"

    iget-object v2, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v2}, Lcom/instagram/common/u/c/d;->c(Lcom/instagram/common/u/c/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/d/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    iget-object v0, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v0}, Lcom/instagram/common/u/c/d;->a(Lcom/instagram/common/u/c/d;)Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/instagram/common/u/c/f;->b:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iget-object v2, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v2}, Lcom/instagram/common/u/c/d;->a(Lcom/instagram/common/u/c/d;)Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v4}, Lcom/instagram/common/u/c/d;->a(Lcom/instagram/common/u/c/d;)Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->c()J

    move-result-wide v4

    iget-object v6, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v6}, Lcom/instagram/common/u/c/d;->e(Lcom/instagram/common/u/c/d;)I

    move-result v6

    if-eq v6, v7, :cond_7b

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v2}, Lcom/instagram/common/u/c/d;->e(Lcom/instagram/common/u/c/d;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_7b

    iget-object v0, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v0}, Lcom/instagram/common/u/c/d;->d(Lcom/instagram/common/u/c/d;)Lcom/facebook/d/b/c;

    move-result-object v0

    const-string v1, "compute time exceeded limit"

    iget-object v2, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v2}, Lcom/instagram/common/u/c/d;->c(Lcom/instagram/common/u/c/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/d/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    iget-object v0, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v0}, Lcom/instagram/common/u/c/d;->f(Lcom/instagram/common/u/c/d;)I

    move-result v0

    if-eq v0, v7, :cond_a3

    iget-wide v0, p0, Lcom/instagram/common/u/c/f;->d:J

    sub-long v0, v4, v0

    iget-object v2, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v2}, Lcom/instagram/common/u/c/d;->f(Lcom/instagram/common/u/c/d;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_a3

    iget-object v0, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v0}, Lcom/instagram/common/u/c/d;->d(Lcom/instagram/common/u/c/d;)Lcom/facebook/d/b/c;

    move-result-object v0

    const-string v1, "wall clock runtime exceeded limit"

    iget-object v2, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v2}, Lcom/instagram/common/u/c/d;->c(Lcom/instagram/common/u/c/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/d/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    iget-object v0, p0, Lcom/instagram/common/u/c/f;->a:Lcom/instagram/common/u/c/d;

    invoke-static {v0}, Lcom/instagram/common/u/c/d;->g(Lcom/instagram/common/u/c/d;)V

    return-void
.end method
