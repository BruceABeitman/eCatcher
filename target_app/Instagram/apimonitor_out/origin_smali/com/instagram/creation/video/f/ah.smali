.class public abstract Lcom/instagram/creation/video/f/ah;
.super Lcom/instagram/creation/video/gl/z;
.source "VideoCoverFragmentBase.java"


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/ad;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Lcom/instagram/creation/video/j/f;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/f/ad;Lcom/instagram/creation/video/gl/j;)V
    .registers 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-direct {p0, p2}, Lcom/instagram/creation/video/gl/z;-><init>(Lcom/instagram/creation/video/gl/j;)V

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/ah;->c:Z

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/ah;->d:Z

    new-instance v0, Lcom/instagram/creation/video/j/f;

    invoke-direct {v0}, Lcom/instagram/creation/video/j/f;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ah;->e:Lcom/instagram/creation/video/j/f;

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->e:Lcom/instagram/creation/video/j/f;

    invoke-virtual {p2, v0}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/p;)V

    return-void
.end method

.method private q()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-object v1, v0, Lcom/instagram/creation/video/f/ad;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-boolean v0, v0, Lcom/instagram/creation/video/f/ad;->d:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->h()Z

    move-result v2

    iput-boolean v2, v0, Lcom/instagram/creation/video/f/ad;->d:Z

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-boolean v0, v0, Lcom/instagram/creation/video/f/ad;->d:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->e(Lcom/instagram/creation/video/f/ad;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/instagram/creation/video/f/ak;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/ak;-><init>(Lcom/instagram/creation/video/f/ah;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private r()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-object v1, v0, Lcom/instagram/creation/video/f/ad;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-boolean v0, v0, Lcom/instagram/creation/video/f/ad;->d:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->j()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/instagram/creation/video/f/ad;->d:Z

    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private s()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->e(Lcom/instagram/creation/video/f/ad;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/video/f/al;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/al;-><init>(Lcom/instagram/creation/video/f/ah;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public C_()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/k/a;

    invoke-interface {v0}, Lcom/instagram/creation/video/k/a;->i()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iput-boolean v3, v0, Lcom/instagram/creation/video/f/ad;->b:Z

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-object v1, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v1}, Lcom/instagram/creation/video/f/ad;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "VideoCoverFragmentBase.SAVE_AND_FINISH"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/instagram/creation/video/f/ad;->c:Z

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ah;->q()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->X()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v1

    sget v2, Lcom/instagram/creation/video/gl/o;->b:I

    invoke-virtual {v1, v2}, Lcom/instagram/creation/video/gl/j;->a(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v2}, Lcom/instagram/creation/video/f/ad;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v0

    invoke-static {v2, v0}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;I)Lcom/instagram/creation/video/e/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/j/f;->a(Lcom/instagram/creation/video/e/c;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-object v1, v1, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/f;->b(Lcom/instagram/creation/b/a/a;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->i()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->U()Lcom/instagram/creation/video/f/ah;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->U()Lcom/instagram/creation/video/f/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v1}, Lcom/instagram/creation/video/f/ad;->c(Lcom/instagram/creation/video/f/ad;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/ah;->a(I)V

    :cond_6c
    return-void
.end method

.method public final D_()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ah;->r()V

    return-void
.end method

.method public final a()Lcom/instagram/creation/video/j/f;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->e:Lcom/instagram/creation/video/j/f;

    return-object v0
.end method

.method protected abstract a(I)V
.end method

.method public final d()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ah;->q()V

    return-void
.end method

.method public e()V
    .registers 5

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/ah;->d:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ah;->s()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->e()V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->e(Lcom/instagram/creation/video/f/ad;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/video/f/aj;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/aj;-><init>(Lcom/instagram/creation/video/f/ah;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_e
.end method

.method public final f()V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ah;->r()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->d(Lcom/instagram/creation/video/f/ad;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoCoverFragmentBase.SAVE_AND_FINISH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_1a
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->e(Lcom/instagram/creation/video/f/ad;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/video/f/ai;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/ai;-><init>(Lcom/instagram/creation/video/f/ah;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_28
    return-void
.end method

.method public final g()Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/instagram/creation/video/f/ah;->d:Z

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-boolean v1, p0, Lcom/instagram/creation/video/f/ah;->c:Z

    if-eqz v1, :cond_25

    iget v1, p0, Lcom/instagram/creation/video/f/ah;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1f

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/ah;->d:Z

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->c()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->d()V

    :cond_1f
    iget v0, p0, Lcom/instagram/creation/video/f/ah;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/creation/video/f/ah;->b:I

    :cond_25
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected abstract h()Z
.end method

.method protected abstract i()V
.end method

.method protected abstract j()V
.end method

.method protected final k()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    sget v1, Lcom/instagram/creation/video/gl/o;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/ah;->c:Z

    return-void
.end method
