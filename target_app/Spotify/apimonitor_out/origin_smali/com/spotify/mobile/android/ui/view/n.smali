.class public final Lcom/spotify/mobile/android/ui/view/n;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/br;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/n;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/n;->c:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/n;->g:I

    const v0, 0x7f020082

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/n;->a:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/n;->h:Landroid/graphics/Paint;

    if-lez p2, :cond_29

    iput p2, p0, Lcom/spotify/mobile/android/ui/view/n;->d:I

    :goto_28
    return-void

    :cond_29
    const-string v0, "Created with 0 splits, setting splits to 1 to avoid division by zero"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/n;->d:I

    goto :goto_28
.end method

.method private a(IF)V
    .registers 7

    int-to-float v0, p1

    add-float/2addr v0, p2

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/n;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/n;->b:Landroid/graphics/Rect;

    iget v2, p0, Lcom/spotify/mobile/android/ui/view/n;->e:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/n;->b:Landroid/graphics/Rect;

    iget v2, p0, Lcom/spotify/mobile/android/ui/view/n;->e:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/spotify/mobile/android/ui/view/n;->f:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    :cond_26
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    return-void
.end method

.method public final a(IFI)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/view/n;->a(IF)V

    iput p1, p0, Lcom/spotify/mobile/android/ui/view/n;->g:I

    return-void
.end method

.method public final b(I)V
    .registers 2

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/n;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/n;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/n;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/n;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/n;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_f
    return-void
.end method

.method public final getOpacity()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/n;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/n;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, -0x3

    :goto_d
    return v0

    :cond_e
    const/4 v0, -0x1

    goto :goto_d
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 9

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/n;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/n;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/n;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v0, :cond_27

    if-ge v2, v3, :cond_27

    const-string v4, "Bitmap not suitable for parallax on current device."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/n;->b:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/n;->b:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v3, v3

    div-float v3, v5, v3

    div-float v3, v4, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lcom/spotify/mobile/android/ui/view/n;->f:I

    iget v3, p0, Lcom/spotify/mobile/android/ui/view/n;->f:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/spotify/mobile/android/ui/view/n;->d:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/spotify/mobile/android/ui/view/n;->e:I

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/n;->c:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/n;->c:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/n;->c:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/n;->c:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/spotify/mobile/android/ui/view/n;->g:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/ui/view/n;->a(IF)V

    :cond_5c
    return-void
.end method

.method public final setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/n;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/n;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
