.class public Lcom/spotify/mobile/android/ui/view/TopHitNumberView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f0101a9

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->a:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->b:I

    return-void
.end method

.method public final a(I)V
    .registers 6

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->c:Z

    if-eqz v0, :cond_18

    const-string v0, "%02d"

    :goto_6
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_18
    const-string v0, "%d"

    goto :goto_6
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dl;->a(Landroid/text/TextPaint;)I

    move-result v7

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->getDrawableState()[I

    move-result-object v0

    iput-object v0, v6, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v0

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    :goto_34
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_5b

    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->a:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v2, v0, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-int/lit8 v3, v2, 0x1

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, v7, v0

    int-to-float v0, v0

    const/high16 v4, 0x4000

    div-float v4, v0, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    int-to-float v0, v7

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_5b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v2, p0, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->b:I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    :goto_11
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/util/dl;->a(Landroid/text/TextPaint;)I

    move-result v2

    mul-int/2addr v0, v2

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v1, v2, v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->setMeasuredDimension(II)V

    return-void

    :cond_29
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_11
.end method
