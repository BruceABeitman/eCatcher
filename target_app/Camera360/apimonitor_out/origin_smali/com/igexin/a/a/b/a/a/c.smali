.class public Lcom/igexin/a/a/b/a/a/c;
.super Lcom/igexin/a/a/b/f;


# instance fields
.field e:Lcom/igexin/a/a/b/a/a/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/igexin/a/a/b/f;-><init>(Ljava/lang/String;Lcom/igexin/a/a/b/c;)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/c;->a:Ljava/lang/String;

    const-string/jumbo v1, "disConnect"

    const-string/jumbo v2, "socket"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/c;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/a/b/a/a/c;->D:Z

    return-void
.end method


# virtual methods
.method public final a_()I
    .registers 2

    const/16 v0, -0x7fd

    return v0
.end method

.method public b()V
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/igexin/a/a/b/f;->b()V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/c;->e:Lcom/igexin/a/a/b/a/a/e;

    iget-object v0, v0, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2f

    move v0, v1

    :goto_f
    iget-object v2, p0, Lcom/igexin/a/a/b/a/a/c;->e:Lcom/igexin/a/a/b/a/a/e;

    iget-object v2, v2, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_20

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xa

    if-le v0, v3, :cond_30

    :cond_20
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/c;->e:Lcom/igexin/a/a/b/a/a/e;

    iget-object v0, v0, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/c;->e:Lcom/igexin/a/a/b/a/a/e;

    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/e;->i()V

    :cond_2f
    return-void

    :cond_30
    move v0, v2

    goto :goto_f
.end method

.method public d()V
    .registers 3

    invoke-super {p0}, Lcom/igexin/a/a/b/f;->d()V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/c;->b:Lcom/igexin/a/a/b/c;

    invoke-static {v0, v1}, Lcom/igexin/a/a/b/a/a/e;->a(Ljava/lang/String;Lcom/igexin/a/a/b/c;)Lcom/igexin/a/a/b/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/c;->e:Lcom/igexin/a/a/b/a/a/e;

    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method
