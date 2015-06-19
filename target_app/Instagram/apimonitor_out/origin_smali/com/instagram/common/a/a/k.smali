.class final Lcom/instagram/common/a/a/k;
.super Landroid/support/v4/a/a;
.source "LoaderRequestPerformer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/a/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic n:Lcom/instagram/common/a/a/j;

.field private o:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/instagram/common/a/a/j;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/common/a/a/k;->n:Lcom/instagram/common/a/a/j;

    invoke-direct {p0, p2}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/instagram/common/a/a/k;->o:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/instagram/common/a/a/k;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, Landroid/support/v4/a/a;->a(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public final d()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/common/a/a/k;->n:Lcom/instagram/common/a/a/j;

    invoke-static {v0}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/a/a/a;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final l()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/a/a;->l()V

    iget-object v0, p0, Lcom/instagram/common/a/a/k;->o:Ljava/lang/Object;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/instagram/common/a/a/k;->o:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/instagram/common/a/a/k;->a(Ljava/lang/Object;)V

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/instagram/common/a/a/k;->m()V

    goto :goto_c
.end method

.method protected final r()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/a/a;->r()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/common/a/a/k;->o:Ljava/lang/Object;

    return-void
.end method
