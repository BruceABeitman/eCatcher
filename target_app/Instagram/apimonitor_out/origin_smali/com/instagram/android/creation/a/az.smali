.class final Lcom/instagram/android/creation/a/az;
.super Ljava/lang/Object;
.source "ThumbnailPhotoPreviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/instagram/android/creation/a/ax;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/ax;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/creation/a/az;->b:Lcom/instagram/android/creation/a/ax;

    iput-object p2, p0, Lcom/instagram/android/creation/a/az;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/creation/a/az;->a:Landroid/view/View;

    sget v1, Lcom/facebook/av;->preview_image_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/az;->a:Landroid/view/View;

    sget v1, Lcom/facebook/av;->preview_image_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/instagram/android/creation/a/ba;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/ba;-><init>(Lcom/instagram/android/creation/a/az;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/az;->a:Landroid/view/View;

    sget v1, Lcom/facebook/av;->preview_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/android/creation/a/az;->b:Lcom/instagram/android/creation/a/ax;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a/ax;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/u/f;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {}, Lcom/instagram/creation/a/a;->a()I

    move-result v2

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/creation/a/az;->b:Lcom/instagram/android/creation/a/ax;

    invoke-static {v2}, Lcom/instagram/android/creation/a/ax;->a(Lcom/instagram/android/creation/a/ax;)Lcom/instagram/creation/b/a/b;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/instagram/android/creation/a/ax;->a(Lcom/instagram/creation/b/a/b;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
