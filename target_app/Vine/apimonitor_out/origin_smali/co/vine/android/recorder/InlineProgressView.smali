.class public Lco/vine/android/recorder/InlineProgressView;
.super Lco/vine/android/recorder/ProgressView;
.source "InlineProgressView.java"


# instance fields
.field final mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lco/vine/android/recorder/ProgressView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lco/vine/android/recorder/InlineProgressView;->mRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lco/vine/android/recorder/ProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lco/vine/android/recorder/InlineProgressView;->mRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/recorder/ProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lco/vine/android/recorder/InlineProgressView;->mRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    iget v3, p0, Lco/vine/android/recorder/InlineProgressView;->mProgressRatio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_27

    invoke-virtual {p0}, Lco/vine/android/recorder/InlineProgressView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lco/vine/android/recorder/InlineProgressView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v1, v0, 0x2

    iget-object v3, p0, Lco/vine/android/recorder/InlineProgressView;->mRect:Landroid/graphics/RectF;

    iget v4, p0, Lco/vine/android/recorder/InlineProgressView;->mProgressRatio:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lco/vine/android/recorder/InlineProgressView;->mRect:Landroid/graphics/RectF;

    int-to-float v4, v0

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lco/vine/android/recorder/InlineProgressView;->mRect:Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v1

    iget-object v6, p0, Lco/vine/android/recorder/InlineProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_27
    return-void
.end method
