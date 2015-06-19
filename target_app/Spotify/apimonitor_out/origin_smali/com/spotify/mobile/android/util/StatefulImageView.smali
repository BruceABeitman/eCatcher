.class public Lcom/spotify/mobile/android/util/StatefulImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/16 v3, 0x7f

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/StatefulImageView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/StatefulImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/StatefulImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/16 v3, 0x7f

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/StatefulImageView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/StatefulImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/StatefulImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/16 v3, 0x7f

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/StatefulImageView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/StatefulImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/StatefulImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/StatefulImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    iget v0, p0, Lcom/spotify/mobile/android/util/StatefulImageView;->c:I

    int-to-float v3, v0

    iget v0, p0, Lcom/spotify/mobile/android/util/StatefulImageView;->b:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/spotify/mobile/android/util/StatefulImageView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_17
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/StatefulImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/util/StatefulImageView;->c:I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/StatefulImageView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/util/StatefulImageView;->b:I

    return-void
.end method
