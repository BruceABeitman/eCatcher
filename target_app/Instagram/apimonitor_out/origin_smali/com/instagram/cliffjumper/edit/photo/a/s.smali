.class final Lcom/instagram/cliffjumper/edit/photo/a/s;
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

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/s;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/a/s;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/s;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/s;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l(Lcom/instagram/cliffjumper/edit/photo/a/a;)Z

    move-result v0

    if-nez v0, :cond_39

    const/4 v0, 0x1

    :goto_b
    invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Z)Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/s;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/s;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l(Lcom/instagram/cliffjumper/edit/photo/a/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a_(Z)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/s;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/s;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l(Lcom/instagram/cliffjumper/edit/photo/a/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/s;->b:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    return-void

    :cond_39
    const/4 v0, 0x0

    goto :goto_b
.end method
