.class public abstract Lcom/pinguo/album/views/layout/ThumbnailLayout;
.super Ljava/lang/Object;
.source "ThumbnailLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
    }
.end annotation


# static fields
.field public static final INDEX_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailLayout"

.field public static final WIDE:Z


# instance fields
.field private mContentLength:I

.field protected mExtraLengthInBottom:I

.field protected mHeight:I

.field protected mHorizontalPadding:Lcom/pinguo/album/animations/IntegerAnim;

.field protected mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

.field protected mScrollPosition:I

.field protected mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

.field protected mThumbnailCount:I

.field protected mThumbnailGap:I

.field protected mThumbnailHeight:I

.field protected mThumbnailPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;",
            ">;"
        }
    .end annotation
.end field

.field protected mThumbnailWidth:I

.field protected mUnitCount:I

.field protected mVerticalPadding:Lcom/pinguo/album/animations/IntegerAnim;

.field protected mVisibleEnd:I

.field protected mVisibleStart:I

.field protected mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pinguo/album/animations/IntegerAnim;

    invoke-direct {v0}, Lcom/pinguo/album/animations/IntegerAnim;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mVerticalPadding:Lcom/pinguo/album/animations/IntegerAnim;

    new-instance v0, Lcom/pinguo/album/animations/IntegerAnim;

    invoke-direct {v0}, Lcom/pinguo/album/animations/IntegerAnim;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mHorizontalPadding:Lcom/pinguo/album/animations/IntegerAnim;

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mExtraLengthInBottom:I

    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .registers 6

    iget-object v1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mVerticalPadding:Lcom/pinguo/album/animations/IntegerAnim;

    invoke-virtual {v1, p1, p2}, Lcom/pinguo/album/animations/IntegerAnim;->calculate(J)Z

    move-result v1

    iget-object v2, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mHorizontalPadding:Lcom/pinguo/album/animations/IntegerAnim;

    invoke-virtual {v2, p1, p2}, Lcom/pinguo/album/animations/IntegerAnim;->calculate(J)Z

    move-result v2

    or-int v0, v1, v2

    return v0
.end method

.method public getContentLength()I
    .registers 3

    iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mExtraLengthInBottom:I

    iget v1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mContentLength:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getGLContentLength()I
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getContentLength()I

    move-result v0

    iget v1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getScrollLimit()I
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getContentLength()I

    move-result v1

    iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mHeight:I

    sub-int v0, v1, v2

    return v0
.end method

.method public getThumbnailCount()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mThumbnailCount:I

    return v0
.end method

.method public getThumbnailHeight()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mThumbnailHeight:I

    return v0
.end method

.method public abstract getThumbnailIndexByPosition(FF)I
.end method

.method public getThumbnailPos()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mThumbnailPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract getThumbnailRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method public getThumbnailWidth()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mThumbnailWidth:I

    return v0
.end method

.method public getVisibleEnd()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mVisibleStart:I

    return v0
.end method

.method protected abstract initThumbnailParameters()V
.end method

.method public isBegin()Z
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mScrollPosition:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isEnd()Z
    .registers 3

    iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mScrollPosition:I

    iget v1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getContentLength()I

    move-result v1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isLastThumbnailShow()Z
    .registers 4

    iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mScrollPosition:I

    iget v1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getContentLength()I

    move-result v1

    iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mThumbnailHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    iget v2, v2, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->footer_height:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mExtraLengthInBottom:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isScrollPositionExpand()Z
    .registers 3

    iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mScrollPosition:I

    iget v1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getContentLength()I

    move-result v1

    if-le v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setContentLength(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mContentLength:I

    return-void
.end method

.method public setExtraLengthInBottom(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mExtraLengthInBottom:I

    return-void
.end method

.method public setRenderer(Lcom/pinguo/album/views/ThumbnailView$Renderer;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

    return-void
.end method

.method public setScrollPosition(I)V
    .registers 3

    iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mScrollPosition:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput p1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mScrollPosition:I

    invoke-virtual {p0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->updateVisibleThumbnailRange()V

    goto :goto_4
.end method

.method public setThumbnailCount(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mThumbnailCount:I

    invoke-virtual {p0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->initThumbnailParameters()V

    return-void
.end method

.method public setThumbnailViewSize(II)V
    .registers 3

    iput p1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mWidth:I

    iput p2, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mHeight:I

    invoke-virtual {p0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->initThumbnailParameters()V

    return-void
.end method

.method protected setVisibleRange(II)V
    .registers 6

    iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mVisibleStart:I

    if-ne p1, v0, :cond_9

    iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mVisibleEnd:I

    if-ne p2, v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-ge p1, p2, :cond_1d

    iput p1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mVisibleStart:I

    iput p2, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mVisibleEnd:I

    :goto_f
    iget-object v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

    iget v1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mVisibleStart:I

    iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mVisibleEnd:I

    invoke-interface {v0, v1, v2}, Lcom/pinguo/album/views/ThumbnailView$Renderer;->onVisibleRangeChanged(II)V

    goto :goto_8

    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mVisibleEnd:I

    iput v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout;->mVisibleStart:I

    goto :goto_f
.end method

.method protected abstract updateVisibleThumbnailRange()V
.end method
