.class public Lcom/igexin/push/c/b;
.super Lcom/igexin/a/a/d/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/a/a/d/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/c/b;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-super {p0}, Lcom/igexin/a/a/d/b;->a()V

    return-void
.end method

.method public a(Lcom/igexin/a/a/d/d;)V
    .registers 3

    sget-boolean v0, Lcom/igexin/push/core/g;->o:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/igexin/push/e/b/d;->g()Lcom/igexin/push/e/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/e/b/d;->j()V

    :cond_b
    invoke-virtual {p0}, Lcom/igexin/push/c/b;->a()V

    return-void
.end method

.method public b(Lcom/igexin/a/a/d/d;)V
    .registers 2

    return-void
.end method
