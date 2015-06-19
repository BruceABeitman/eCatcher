.class public final Lcom/instagram/a/c;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarItemBackgroundDrawable.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/content/res/Resources;

.field private final c:Lcom/instagram/a/d;

.field private final d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/instagram/a/d;I)V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/a/c;->a:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/instagram/a/c;->b:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/instagram/a/c;->c:Lcom/instagram/a/d;

    iput p3, p0, Lcom/instagram/a/c;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/instagram/a/c;->d:I

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 8

    const/high16 v5, 0x4080

    iget-boolean v0, p0, Lcom/instagram/a/c;->e:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/instagram/a/c;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/instagram/a/c;->b:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/instagram/a/c;->c:Lcom/instagram/a/d;

    invoke-static {v2}, Lcom/instagram/a/d;->a(Lcom/instagram/a/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/instagram/a/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/a/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_20
    iget v0, p0, Lcom/instagram/a/c;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5a

    const/4 v0, 0x0

    :goto_26
    iget-object v1, p0, Lcom/instagram/a/c;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/instagram/a/c;->b:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/instagram/a/c;->c:Lcom/instagram/a/d;

    invoke-static {v3}, Lcom/instagram/a/d;->b(Lcom/instagram/a/d;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/instagram/a/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/instagram/a/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x4040

    mul-float/2addr v0, v4

    div-float v4, v0, v5

    iget-object v5, p0, Lcom/instagram/a/c;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_5a
    invoke-virtual {p0}, Lcom/instagram/a/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_26
.end method

.method public final getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public final isStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final onStateChange([I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/instagram/a/c;->e:Z

    new-array v3, v0, [I

    const v4, 0x10100a7

    aput v4, v3, v1

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/instagram/a/c;->e:Z

    invoke-virtual {p0}, Lcom/instagram/a/c;->invalidateSelf()V

    iget-boolean v3, p0, Lcom/instagram/a/c;->e:Z

    if-eq v2, v3, :cond_19

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method

.method public final setAlpha(I)V
    .registers 2

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
