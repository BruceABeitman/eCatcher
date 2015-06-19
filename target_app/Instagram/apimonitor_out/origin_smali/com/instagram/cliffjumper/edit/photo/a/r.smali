.class final Lcom/instagram/cliffjumper/edit/photo/a/r;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/instagram/cliffjumper/edit/photo/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;Landroid/widget/ImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/r;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/a/r;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    if-eqz v0, :cond_33

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;-><init>()V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/r;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/r;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->h(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/r;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v3}, Lcom/instagram/cliffjumper/edit/photo/a/a;->i(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/a/r;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v4}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/a/r;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v5}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/instagram/cliffjumper/edit/common/ui/a;->a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/ui/b;)Z

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/r;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/cliffjumper/edit/common/ui/a;)V

    :goto_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/r;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v3

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/r;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v4

    if-nez v3, :cond_5a

    move v0, v1

    :goto_46
    invoke-virtual {v4, v5, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/r;->a:Landroid/widget/ImageView;

    if-nez v3, :cond_5c

    :goto_4d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/r;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_32

    :cond_5a
    move v0, v2

    goto :goto_46

    :cond_5c
    move v1, v2

    goto :goto_4d
.end method
