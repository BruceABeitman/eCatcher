.class final Lcom/instagram/creation/photo/camera/h;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/instagram/k/b/a;

.field final synthetic c:Lcom/instagram/creation/photo/camera/c;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/camera/c;Landroid/view/View;Lcom/instagram/k/b/a;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/creation/photo/camera/h;->c:Lcom/instagram/creation/photo/camera/c;

    iput-object p2, p0, Lcom/instagram/creation/photo/camera/h;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/instagram/creation/photo/camera/h;->b:Lcom/instagram/k/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/h;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/h;->c:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->i(Lcom/instagram/creation/photo/camera/c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/h;->b:Lcom/instagram/k/b/a;

    invoke-virtual {v0, v2}, Lcom/instagram/k/b/a;->a(Z)V

    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/h;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/h;->c:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->i(Lcom/instagram/creation/photo/camera/c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/h;->c:Lcom/instagram/creation/photo/camera/c;

    invoke-virtual {v1}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/h;->b:Lcom/instagram/k/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/k/b/a;->a(Z)V

    goto :goto_27
.end method
