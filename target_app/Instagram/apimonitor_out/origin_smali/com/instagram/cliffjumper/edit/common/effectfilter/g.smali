.class final Lcom/instagram/cliffjumper/edit/common/effectfilter/g;
.super Ljava/lang/Object;
.source "FilterStrengthController.java"

# interfaces
.implements Lcom/instagram/cliffjumper/ui/a;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

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

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->e(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    :cond_25
    return-void
.end method

.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0, p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;I)I

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    :cond_2f
    return-void
.end method

.method public final b()V
    .registers 4

    const/4 v2, 0x1

    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->e(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_10
.end method
