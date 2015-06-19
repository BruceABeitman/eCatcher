.class final Lcom/instagram/creation/photo/crop/j;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:F

.field b:Landroid/graphics/Matrix;

.field final synthetic c:Lcom/instagram/creation/photo/crop/b;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/crop/b;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/instagram/creation/photo/crop/j;->a:F

    return-void
.end method

.method private a()V
    .registers 12

    const/4 v10, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/instagram/creation/photo/crop/o;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->g(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/creation/photo/crop/o;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-virtual {v1}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CropFragment.isAvatar"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/o;->b()V

    :cond_1e
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->h(Lcom/instagram/creation/photo/crop/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->h(Lcom/instagram/creation/photo/crop/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->e(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->e()I

    move-result v2

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->e(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->f()I

    move-result v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    long-to-int v6, v6

    int-to-double v6, v6

    const-wide v8, 0x3fd7ae147ae147aeL

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {}, Lcom/instagram/creation/photo/crop/b;->b()Ljava/lang/Class;

    :goto_5d
    mul-int v7, v2, v1

    if-le v7, v6, :cond_66

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    goto :goto_5d

    :cond_66
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->i(Lcom/instagram/creation/photo/crop/b;)I

    move-result v1

    if-lez v1, :cond_cf

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->i(Lcom/instagram/creation/photo/crop/b;)I

    move-result v1

    mul-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    :goto_7a
    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-lez v2, :cond_cd

    :goto_80
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v10, v10, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    int-to-float v1, v3

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v6, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-virtual {v6}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "CropFragment.isAvatar"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a2

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    :cond_a2
    sub-int/2addr v3, v1

    div-int/lit8 v6, v3, 0x2

    sub-int v3, v5, v1

    div-int/lit8 v5, v3, 0x2

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v6

    int-to-float v8, v5

    add-int/2addr v6, v1

    int-to-float v6, v6

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v3, v7, v8, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/j;->b:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v5}, Lcom/instagram/creation/photo/crop/b;->j(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/creation/photo/b/b;->a()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/creation/photo/crop/o;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)V

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->g(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/creation/photo/crop/CropImageView;->a(Lcom/instagram/creation/photo/crop/o;)V

    return-void

    :cond_cd
    move v4, v1

    goto :goto_80

    :cond_cf
    move v1, v4

    goto :goto_7a
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->g(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/j;->b:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/instagram/creation/photo/crop/j;->a:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/photo/crop/j;->a:F

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/j;->a()V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->g(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/CropImageView;->invalidate()V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->g(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->g(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/crop/o;

    invoke-static {v1, v0}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/creation/photo/crop/b;Lcom/instagram/creation/photo/crop/o;)Lcom/instagram/creation/photo/crop/o;

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/j;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->k(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/o;->a()V

    :cond_4b
    return-void
.end method
