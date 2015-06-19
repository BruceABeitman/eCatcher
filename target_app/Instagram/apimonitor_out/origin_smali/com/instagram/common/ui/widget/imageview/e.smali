.class final Lcom/instagram/common/ui/widget/imageview/e;
.super Ljava/lang/Object;
.source "IgImageView.java"

# interfaces
.implements Lcom/instagram/common/e/b/k;


# instance fields
.field final synthetic a:Lcom/instagram/common/ui/widget/imageview/IgImageView;


# direct methods
.method constructor <init>(Lcom/instagram/common/ui/widget/imageview/IgImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a:Z

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-static {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Lcom/instagram/common/ui/widget/imageview/f;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-static {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Lcom/instagram/common/ui/widget/imageview/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instagram/common/ui/widget/imageview/f;->a(Landroid/graphics/Bitmap;)V

    :cond_17
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iget-boolean v0, v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-static {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-static {v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->c(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-static {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->d(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Lcom/instagram/common/ui/widget/imageview/g;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-static {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->d(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Lcom/instagram/common/ui/widget/imageview/g;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/instagram/common/ui/widget/imageview/g;->a(I)V

    :cond_2e
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-static {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a:Z

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0, p2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-static {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Lcom/instagram/common/ui/widget/imageview/f;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/e;->a:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-static {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Lcom/instagram/common/ui/widget/imageview/f;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/instagram/common/ui/widget/imageview/f;->a(Landroid/graphics/Bitmap;)V

    :cond_27
    return-void
.end method
