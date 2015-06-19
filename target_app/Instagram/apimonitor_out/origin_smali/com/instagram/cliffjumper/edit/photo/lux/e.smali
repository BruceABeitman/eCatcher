.class final Lcom/instagram/cliffjumper/edit/photo/lux/e;
.super Ljava/lang/Object;
.source "LuxAdjustmentController.java"

# interfaces
.implements Lcom/instagram/cliffjumper/ui/a;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/lux/d;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/lux/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->d(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->e(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->e(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    :cond_25
    return-void
.end method

.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0, p1}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(Lcom/instagram/cliffjumper/edit/photo/lux/d;I)I

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(Lcom/instagram/cliffjumper/edit/photo/lux/d;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b(Lcom/instagram/cliffjumper/edit/photo/lux/d;I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->c(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    :cond_27
    return-void
.end method

.method public final b()V
    .registers 4

    const/4 v2, 0x1

    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->c(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->d(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->e(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->e(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->c(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_10
.end method
