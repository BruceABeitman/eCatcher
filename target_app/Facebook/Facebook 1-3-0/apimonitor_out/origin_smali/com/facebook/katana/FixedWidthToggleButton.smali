.class Lcom/facebook/katana/FixedWidthToggleButton;
.super Landroid/widget/ToggleButton;
.source "FixedWidthToggleButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 16

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/katana/FixedWidthToggleButton;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/facebook/katana/FixedWidthToggleButton;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v8, v2

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/katana/FixedWidthToggleButton;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v9, 0x0

    array-length v10, v8

    const/4 v2, 0x0

    move v12, v2

    :goto_21
    if-lt v12, v10, :cond_3e

    invoke-virtual {p0}, Lcom/facebook/katana/FixedWidthToggleButton;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {p0}, Lcom/facebook/katana/FixedWidthToggleButton;->getPaddingRight()I

    move-result v3

    add-int v11, v2, v3

    invoke-static {v11, p1}, Lcom/facebook/katana/FixedWidthToggleButton;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/katana/FixedWidthToggleButton;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v3, p2}, Lcom/facebook/katana/FixedWidthToggleButton;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/facebook/katana/FixedWidthToggleButton;->setMeasuredDimension(II)V

    return-void

    :cond_3e
    aget-object v1, v8, v12

    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/facebook/katana/FixedWidthToggleButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/16 v3, 0x3e8

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-int v11, v2

    if-le v11, v9, :cond_5a

    move v9, v11

    :cond_5a
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_21
.end method
