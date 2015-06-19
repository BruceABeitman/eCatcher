.class final Lcom/instagram/cliffjumper/edit/common/effectfilter/h;
.super Ljava/lang/Object;
.source "FilterStrengthController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;Landroid/widget/ImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;->b:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;->b:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;->b:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->f(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z

    move-result v0

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    :goto_b
    invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;Z)Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;->b:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;->b:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->f(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;->b:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;->b:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;->b:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->f(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a(Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;->b:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    :cond_3d
    return-void

    :cond_3e
    const/4 v0, 0x0

    goto :goto_b
.end method
