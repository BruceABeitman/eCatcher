.class final Lcom/instagram/cliffjumper/edit/photo/a/i;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/i;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/i;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;-><init>(Landroid/content/res/Resources;)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/i;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/i;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->h(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/i;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v3}, Lcom/instagram/cliffjumper/edit/photo/a/a;->i(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/a/i;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v4}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/a/i;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v5}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/instagram/cliffjumper/edit/common/ui/a;->a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/ui/b;)Z

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/i;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/cliffjumper/edit/common/ui/a;)V

    return-void
.end method
