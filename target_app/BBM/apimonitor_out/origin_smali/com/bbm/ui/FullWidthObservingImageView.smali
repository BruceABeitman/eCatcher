.class public Lcom/bbm/ui/FullWidthObservingImageView;
.super Lcom/bbm/ui/ObservingImageView;
.source "FullWidthObservingImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/ObservingImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/ObservingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/ObservingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6

    invoke-virtual {p0}, Lcom/bbm/ui/FullWidthObservingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/bbm/ui/FullWidthObservingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_2a

    invoke-virtual {p0}, Lcom/bbm/ui/FullWidthObservingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/bbm/ui/FullWidthObservingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/FullWidthObservingImageView;->setMeasuredDimension(II)V

    :goto_29
    return-void

    :cond_2a
    invoke-super {p0, p1, p2}, Lcom/bbm/ui/ObservingImageView;->onMeasure(II)V

    goto :goto_29

    :cond_2e
    invoke-super {p0, p1, p2}, Lcom/bbm/ui/ObservingImageView;->onMeasure(II)V

    goto :goto_29
.end method
