.class final Lcom/instagram/cliffjumper/edit/photo/a/k;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 10

    const/4 v3, 0x4

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c()V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    sget v2, Lcom/facebook/az;->processing:I

    invoke-virtual {v1, v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Ljava/lang/String;)V

    invoke-static {}, Lcom/instagram/creation/a/a;->b()V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(Z)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;

    invoke-virtual {v0, v4}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b_(Z)V

    :cond_3b
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v4}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/render/c;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/photo/a/y;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v3}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v3

    invoke-interface {v3}, Lcom/instagram/filterkit/c/c;->d()Lcom/instagram/filterkit/a/b;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v4}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v4

    new-instance v5, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;

    invoke-direct {v5}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;-><init>()V

    iget-object v6, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v6}, Lcom/instagram/cliffjumper/edit/photo/a/a;->p(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/a/x;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/cliffjumper/edit/photo/a/x;->a()Lcom/instagram/filterkit/e/a;

    move-result-object v6

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v7}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/instagram/cliffjumper/edit/photo/render/i;->a(Landroid/content/Context;)[Lcom/instagram/cliffjumper/edit/photo/render/h;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/instagram/cliffjumper/edit/photo/render/c;-><init>(Landroid/content/Context;Lcom/instagram/cliffjumper/edit/photo/render/g;Lcom/instagram/filterkit/a/b;Lcom/instagram/filterkit/filter/IgFilter;Lcom/instagram/filterkit/filter/IgFilter;Lcom/instagram/filterkit/e/a;[Lcom/instagram/cliffjumper/edit/photo/render/h;)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/k;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/c/d;)V

    return-void
.end method
