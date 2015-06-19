.class public Lcom/pinguo/album/views/layout/ThumbnailContractLayout;
.super Lcom/pinguo/album/views/layout/ThumbnailLayout;
.source "ThumbnailContractLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailContractLayout"


# direct methods
.method public constructor <init>(Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;-><init>()V

    iput-object p1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    return-void
.end method

.method private initThumbnailLayoutParameters(IIII)V
    .registers 12

    iget v4, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    add-int/2addr v5, p4

    div-int v2, v4, v5

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :cond_b
    iput v2, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mUnitCount:I

    iget v4, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mUnitCount:I

    iget v5, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v4, v0, p4

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    mul-int/2addr v5, v6

    add-int v3, v4, v5

    iget v4, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailCount:I

    iget v5, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mUnitCount:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mUnitCount:I

    div-int v1, v4, v5

    mul-int v4, v1, p3

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->setContentLength(I)V

    const-string/jumbo v4, "ThumbnailContractLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " initLayoutParameters rows:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " column;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getThumbnailIndexByPosition(FF)I
    .registers 11

    const/4 v5, -0x1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v0, v6, 0x0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mScrollPosition:I

    add-int v1, v6, v7

    iget-object v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mHorizontalPadding:Lcom/pinguo/album/animations/IntegerAnim;

    invoke-virtual {v6}, Lcom/pinguo/album/animations/IntegerAnim;->get()I

    move-result v6

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mVerticalPadding:Lcom/pinguo/album/animations/IntegerAnim;

    invoke-virtual {v6}, Lcom/pinguo/album/animations/IntegerAnim;->get()I

    move-result v6

    sub-int/2addr v1, v6

    if-ltz v0, :cond_21

    if-gez v1, :cond_22

    :cond_21
    :goto_21
    return v5

    :cond_22
    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailWidth:I

    iget v7, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    add-int/2addr v6, v7

    div-int v2, v0, v6

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailHeight:I

    iget v7, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    add-int/2addr v6, v7

    div-int v4, v1, v6

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mUnitCount:I

    if-ge v2, v6, :cond_21

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailWidth:I

    iget v7, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    add-int/2addr v6, v7

    rem-int v6, v0, v6

    iget v7, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailWidth:I

    if-ge v6, v7, :cond_21

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailHeight:I

    iget v7, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    add-int/2addr v6, v7

    rem-int v6, v1, v6

    iget v7, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailHeight:I

    if-ge v6, v7, :cond_21

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mUnitCount:I

    mul-int/2addr v6, v4

    add-int v3, v6, v2

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailCount:I

    if-lt v3, v6, :cond_54

    move v3, v5

    :cond_54
    move v5, v3

    goto :goto_21
.end method

.method public getThumbnailRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 10

    iget v4, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mUnitCount:I

    div-int v1, p1, v4

    iget v4, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mUnitCount:I

    mul-int/2addr v4, v1

    sub-int v0, p1, v4

    iget-object v4, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mHorizontalPadding:Lcom/pinguo/album/animations/IntegerAnim;

    invoke-virtual {v4}, Lcom/pinguo/album/animations/IntegerAnim;->get()I

    move-result v4

    iget v5, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailWidth:I

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    add-int v2, v4, v5

    iget-object v4, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mVerticalPadding:Lcom/pinguo/album/animations/IntegerAnim;

    invoke-virtual {v4}, Lcom/pinguo/album/animations/IntegerAnim;->get()I

    move-result v4

    iget v5, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailHeight:I

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int v3, v4, v5

    iget v4, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailWidth:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailHeight:I

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2
.end method

.method protected initThumbnailParameters()V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    iget v1, v1, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->thumbnailGap:I

    iput v1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    iget v1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mWidth:I

    iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mHeight:I

    if-ge v1, v2, :cond_61

    iget-object v1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    iget v0, v1, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->rowsLand:I

    :goto_10
    const/4 v1, 0x1

    iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mWidth:I

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailWidth:I

    iget v1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailWidth:I

    iget-object v2, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    iget v2, v2, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->labelHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailHeight:I

    iget-object v1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

    iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailWidth:I

    iget v3, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailHeight:I

    invoke-interface {v1, v2, v3}, Lcom/pinguo/album/views/ThumbnailView$Renderer;->onThumbnailSizeChanged(II)V

    :cond_36
    iget v1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mHeight:I

    iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mWidth:I

    iget v3, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailHeight:I

    iget v4, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailWidth:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->initThumbnailLayoutParameters(IIII)V

    iget-object v1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mVerticalPadding:Lcom/pinguo/album/animations/IntegerAnim;

    invoke-virtual {v1}, Lcom/pinguo/album/animations/IntegerAnim;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mVerticalPadding:Lcom/pinguo/album/animations/IntegerAnim;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/pinguo/album/animations/IntegerAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mVerticalPadding:Lcom/pinguo/album/animations/IntegerAnim;

    iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mHeight:I

    iget v3, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/pinguo/album/animations/IntegerAnim;->startAnimateTo(I)V

    :cond_5d
    invoke-virtual {p0}, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->updateVisibleThumbnailRange()V

    return-void

    :cond_61
    iget-object v1, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    iget v0, v1, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->rowsPort:I

    goto :goto_10
.end method

.method protected updateVisibleThumbnailRange()V
    .registers 9

    iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mScrollPosition:I

    iget v5, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailHeight:I

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    add-int/2addr v5, v6

    div-int v4, v2, v5

    const/4 v5, 0x0

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mUnitCount:I

    mul-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mHeight:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailHeight:I

    iget v7, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailGap:I

    add-int/2addr v6, v7

    div-int v1, v5, v6

    iget v5, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mThumbnailCount:I

    iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->mUnitCount:I

    mul-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/pinguo/album/views/layout/ThumbnailContractLayout;->setVisibleRange(II)V

    return-void
.end method
