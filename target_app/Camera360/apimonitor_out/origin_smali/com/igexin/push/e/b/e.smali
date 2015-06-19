.class public Lcom/igexin/push/e/b/e;
.super Lcom/igexin/push/e/b/h;


# static fields
.field private static a:Lcom/igexin/push/e/b/e;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/32 v0, 0x36ee80

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/e/b/h;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/e/b/e;->A:Z

    return-void
.end method

.method public static g()Lcom/igexin/push/e/b/e;
    .registers 1

    sget-object v0, Lcom/igexin/push/e/b/e;->a:Lcom/igexin/push/e/b/e;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/e/b/e;

    invoke-direct {v0}, Lcom/igexin/push/e/b/e;-><init>()V

    sput-object v0, Lcom/igexin/push/e/b/e;->a:Lcom/igexin/push/e/b/e;

    :cond_b
    sget-object v0, Lcom/igexin/push/e/b/e;->a:Lcom/igexin/push/e/b/e;

    return-object v0
.end method


# virtual methods
.method public a_()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 2

    invoke-super {p0}, Lcom/igexin/push/e/b/h;->c()V

    iget-boolean v0, p0, Lcom/igexin/push/e/b/e;->x:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/igexin/push/e/b/e;->h()V

    :cond_a
    return-void
.end method

.method public h()V
    .registers 4

    const-wide/32 v0, 0x36ee80

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/e/b/e;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method

.method protected i()V
    .registers 7

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->A()V

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->y()V

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->q()V

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->r()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/core/g;->M:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_34

    sput-wide v0, Lcom/igexin/push/core/g;->M:J

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->x()V

    :cond_34
    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->z()V

    return-void
.end method
