.class public Lcom/pinguo/album/opengles/StringTexture;
.super Lcom/pinguo/album/opengles/CanvasTexture;
.source "StringTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/opengles/StringTexture$StringArray;
    }
.end annotation


# instance fields
.field private final mPaint:Landroid/text/TextPaint;

.field private final mText:Lcom/pinguo/album/opengles/StringTexture$StringArray;


# direct methods
.method private constructor <init>(Lcom/pinguo/album/opengles/StringTexture$StringArray;Landroid/text/TextPaint;II)V
    .registers 5

    invoke-direct {p0, p3, p4}, Lcom/pinguo/album/opengles/CanvasTexture;-><init>(II)V

    iput-object p1, p0, Lcom/pinguo/album/opengles/StringTexture;->mText:Lcom/pinguo/album/opengles/StringTexture$StringArray;

    iput-object p2, p0, Lcom/pinguo/album/opengles/StringTexture;->mPaint:Landroid/text/TextPaint;

    return-void
.end method

.method public static getDefaultPaint(FIZ)Landroid/text/TextPaint;
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz p2, :cond_19

    const/high16 v1, 0x4000

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_19
    return-object v0
.end method

.method public static newInstance(Lcom/pinguo/album/opengles/StringTexture$StringArray;)Lcom/pinguo/album/opengles/StringTexture;
    .registers 14

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->hasPaintInfo()Z

    move-result v9

    if-nez v9, :cond_2c

    const/high16 v9, 0x4180

    const/high16 v10, -0x100

    invoke-static {v9, v10, v12}, Lcom/pinguo/album/opengles/StringTexture;->getDefaultPaint(FIZ)Landroid/text/TextPaint;

    move-result-object v3

    :goto_11
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getCount()I

    move-result v10

    mul-int v0, v9, v10

    if-gtz v8, :cond_23

    const/4 v8, 0x1

    :cond_23
    if-gtz v0, :cond_26

    const/4 v0, 0x1

    :cond_26
    new-instance v9, Lcom/pinguo/album/opengles/StringTexture;

    invoke-direct {v9, p0, v3, v8, v0}, Lcom/pinguo/album/opengles/StringTexture;-><init>(Lcom/pinguo/album/opengles/StringTexture$StringArray;Landroid/text/TextPaint;II)V

    return-object v9

    :cond_2c
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v3, v12}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const/4 v1, 0x0

    :goto_35
    invoke-virtual {p0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getCount()I

    move-result v9

    if-lt v1, v9, :cond_5f

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getPaintColors()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getPaintSizes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_11

    :cond_5f
    invoke-virtual {p0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getStrings()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getPaintSizes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getPaintColors()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v9, v5

    invoke-virtual {v3, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    if-le v7, v8, :cond_99

    move v8, v7

    :cond_99
    add-int/lit8 v1, v1, 0x1

    goto :goto_35
.end method

.method public static newInstance(Ljava/lang/String;FI)Lcom/pinguo/album/opengles/StringTexture;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/pinguo/album/opengles/StringTexture;->getDefaultPaint(FIZ)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pinguo/album/opengles/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/pinguo/album/opengles/StringTexture;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FIFZ)Lcom/pinguo/album/opengles/StringTexture;
    .registers 7

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/pinguo/album/opengles/StringTexture;->getDefaultPaint(FIZ)Landroid/text/TextPaint;

    move-result-object v0

    if-eqz p4, :cond_e

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_e
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1d

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v0, p3, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1d
    invoke-static {p0, v0}, Lcom/pinguo/album/opengles/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/pinguo/album/opengles/StringTexture;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;FIZ)Lcom/pinguo/album/opengles/StringTexture;
    .registers 5

    invoke-static {p1, p2, p3}, Lcom/pinguo/album/opengles/StringTexture;->getDefaultPaint(FIZ)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pinguo/album/opengles/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/pinguo/album/opengles/StringTexture;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/pinguo/album/opengles/StringTexture;
    .registers 14

    const/16 v11, 0xa

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0, v11, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-gez v4, :cond_59

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v8, v9

    const/4 v3, 0x1

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v9, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v9, v10

    mul-int v0, v9, v3

    if-gtz v8, :cond_2c

    const/4 v8, 0x1

    :cond_2c
    if-gtz v0, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    new-instance v9, Lcom/pinguo/album/opengles/StringTexture;

    new-instance v10, Lcom/pinguo/album/opengles/StringTexture$StringArray;

    invoke-direct {v10, v7}, Lcom/pinguo/album/opengles/StringTexture$StringArray;-><init>(Ljava/util/List;)V

    invoke-direct {v9, v10, p1, v8, v0}, Lcom/pinguo/album/opengles/StringTexture;-><init>(Lcom/pinguo/album/opengles/StringTexture$StringArray;Landroid/text/TextPaint;II)V

    return-object v9

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v6, v9

    if-le v6, v8, :cond_50

    move v8, v6

    :cond_50
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v5, v9, :cond_7f

    const/4 v4, -0x1

    :cond_59
    :goto_59
    const/4 v9, -0x1

    if-ne v4, v9, :cond_3a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v5, v9, :cond_1e

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v6, v9

    if-le v6, v8, :cond_1e

    move v8, v6

    goto :goto_1e

    :cond_7f
    invoke-virtual {p0, v11, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_59
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .registers 13

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/pinguo/album/opengles/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v6, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/pinguo/album/opengles/StringTexture;->mText:Lcom/pinguo/album/opengles/StringTexture$StringArray;

    invoke-virtual {v6}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->hasPaintInfo()Z

    move-result v6

    if-nez v6, :cond_3b

    iget-object v6, p0, Lcom/pinguo/album/opengles/StringTexture;->mText:Lcom/pinguo/album/opengles/StringTexture$StringArray;

    invoke-virtual {v6}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getStrings()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_28

    :cond_27
    return-void

    :cond_28
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    int-to-float v7, v0

    iget-object v8, p0, Lcom/pinguo/album/opengles/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v9, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v7, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v8, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v0, v7

    goto :goto_21

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    iget-object v6, p0, Lcom/pinguo/album/opengles/StringTexture;->mText:Lcom/pinguo/album/opengles/StringTexture$StringArray;

    invoke-virtual {v6}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_27

    iget-object v6, p0, Lcom/pinguo/album/opengles/StringTexture;->mText:Lcom/pinguo/album/opengles/StringTexture$StringArray;

    invoke-virtual {v6}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getStrings()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/pinguo/album/opengles/StringTexture;->mText:Lcom/pinguo/album/opengles/StringTexture$StringArray;

    invoke-virtual {v6}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getPaintSizes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, p0, Lcom/pinguo/album/opengles/StringTexture;->mText:Lcom/pinguo/album/opengles/StringTexture$StringArray;

    invoke-virtual {v6}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getPaintColors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, p0, Lcom/pinguo/album/opengles/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v6, p0, Lcom/pinguo/album/opengles/StringTexture;->mPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    int-to-float v6, v0

    iget-object v7, p0, Lcom/pinguo/album/opengles/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v9, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/pinguo/album/opengles/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v6, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v7, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c
.end method
