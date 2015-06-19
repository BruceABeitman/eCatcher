.class final Lcom/instagram/cliffjumper/edit/photo/a/j;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/j;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const/16 v2, 0x14

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/j;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/j;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/j;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_f
.end method
