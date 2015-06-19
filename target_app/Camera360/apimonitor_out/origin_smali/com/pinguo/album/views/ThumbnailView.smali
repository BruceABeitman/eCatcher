.class public Lcom/pinguo/album/views/ThumbnailView;
.super Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
.source "ThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/views/ThumbnailView$Listener;,
        Lcom/pinguo/album/views/ThumbnailView$Renderer;,
        Lcom/pinguo/album/views/ThumbnailView$SimpleListener;
    }
.end annotation


# static fields
.field public static final FONT_COLOR_DATE:I = -0x34302e

.field public static final OVERSCROLL_3D:I = 0x0

.field public static final OVERSCROLL_NONE:I = 0x2

.field public static final OVERSCROLL_SYSTEM:I = 0x1

.field public static final RENDER_MORE_FRAME:I = 0x2

.field public static final RENDER_MORE_PASS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailView"

.field public static final WIDE_SCROLLING:Z


# instance fields
.field private mAnimation:Lcom/pinguo/album/animations/ThumbnailAnim;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/pinguo/album/SynchronizedHandler;

.field private mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

.field private mListener:Lcom/pinguo/album/views/ThumbnailView$Listener;

.field private mNoThumbnailImgTexture:Lcom/pinguo/album/opengles/ResourceTexture;

.field private mNoThumbnailTextTexture:Lcom/pinguo/album/opengles/StringTexture;

.field private mOverscrollEffect:I

.field private final mPaper:Lcom/pinguo/album/views/utils/ViewPaper;

.field private mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

.field private mStartIndex:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUIListener:Lcom/pinguo/album/views/UIListener;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/fragment/PGBaseFragment;Lcom/pinguo/album/views/layout/ThumbnailLayout;)V
    .registers 5

    invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mStartIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mAnimation:Lcom/pinguo/album/animations/ThumbnailAnim;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    iput v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mOverscrollEffect:I

    new-instance v0, Lcom/pinguo/album/views/utils/ViewPaper;

    invoke-direct {v0}, Lcom/pinguo/album/views/utils/ViewPaper;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mPaper:Lcom/pinguo/album/views/utils/ViewPaper;

    invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    new-instance v0, Lcom/pinguo/album/SynchronizedHandler;

    invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getGLController()Lcom/pinguo/album/views/GLController;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/album/SynchronizedHandler;-><init>(Lcom/pinguo/album/views/GLController;)V

    iput-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    return-void
.end method

.method private ensureNoThumbnailRes()V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mNoThumbnailTextTexture:Lcom/pinguo/album/opengles/StringTexture;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mNoThumbnailImgTexture:Lcom/pinguo/album/opengles/ResourceTexture;

    if-eqz v1, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mContext:Landroid/content/Context;

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I

    move-result v1

    int-to-float v0, v1

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mContext:Landroid/content/Context;

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x544d46

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/pinguo/album/opengles/StringTexture;->newInstance(Ljava/lang/String;FIZ)Lcom/pinguo/album/opengles/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mNoThumbnailTextTexture:Lcom/pinguo/album/opengles/StringTexture;

    new-instance v1, Lcom/pinguo/album/opengles/ResourceTexture;

    iget-object v2, p0, Lcom/pinguo/album/views/ThumbnailView;->mContext:Landroid/content/Context;

    const v3, 0x7f020006

    invoke-direct {v1, v2, v3}, Lcom/pinguo/album/opengles/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mNoThumbnailImgTexture:Lcom/pinguo/album/opengles/ResourceTexture;

    goto :goto_8
.end method

.method private isPaperAcitivated()Z
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getScrollX()I

    move-result v2

    iget v5, p0, Lcom/pinguo/album/views/ThumbnailView;->mOverscrollEffect:I

    if-nez v5, :cond_31

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/pinguo/album/views/ThumbnailView;->getScrollLimit(Z)I

    move-result v0

    if-lez v2, :cond_15

    if-eqz v1, :cond_19

    :cond_15
    if-ge v2, v0, :cond_2b

    if-ne v1, v0, :cond_2b

    :cond_19
    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->scrollerGetVelocity()F

    move-result v3

    if-ne v1, v0, :cond_20

    neg-float v3, v3

    :cond_20
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_2b

    iget-object v4, p0, Lcom/pinguo/album/views/ThumbnailView;->mPaper:Lcom/pinguo/album/views/utils/ViewPaper;

    invoke-virtual {v4, v3}, Lcom/pinguo/album/views/utils/ViewPaper;->edgeReached(F)V

    :cond_2b
    iget-object v4, p0, Lcom/pinguo/album/views/ThumbnailView;->mPaper:Lcom/pinguo/album/views/utils/ViewPaper;

    invoke-virtual {v4}, Lcom/pinguo/album/views/utils/ViewPaper;->advanceAnimation()Z

    move-result v4

    :cond_31
    return v4
.end method

.method private renderItem(Lcom/pinguo/album/opengles/GLESCanvas;IIZ)I
    .registers 13

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getThumbnailRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    if-eqz p4, :cond_47

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mPaper:Lcom/pinguo/album/views/utils/ViewPaper;

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Lcom/pinguo/album/views/utils/ViewPaper;->getTransform(Landroid/graphics/Rect;F)[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/pinguo/album/opengles/GLESCanvas;->multiplyMatrix([FI)V

    :goto_1d
    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mAnimation:Lcom/pinguo/album/animations/ThumbnailAnim;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mAnimation:Lcom/pinguo/album/animations/ThumbnailAnim;

    invoke-virtual {v0}, Lcom/pinguo/album/animations/ThumbnailAnim;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mAnimation:Lcom/pinguo/album/animations/ThumbnailAnim;

    invoke-virtual {v0, p1, p2, v6}, Lcom/pinguo/album/animations/ThumbnailAnim;->apply(Lcom/pinguo/album/opengles/GLESCanvas;ILandroid/graphics/Rect;)V

    :cond_2e
    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v2

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v2

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/pinguo/album/views/ThumbnailView$Renderer;->renderThumbnail(Lcom/pinguo/album/opengles/GLESCanvas;IIII)I

    move-result v7

    invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V

    return v7

    :cond_47
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FFF)V

    goto :goto_1d
.end method

.method private renderSortTag(Lcom/pinguo/album/opengles/GLESCanvas;ILandroid/graphics/Rect;)V
    .registers 8

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FFF)V

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/pinguo/album/views/ThumbnailView$Renderer;->renderSortTag(Lcom/pinguo/album/opengles/GLESCanvas;III)I

    invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V

    return-void
.end method

.method private updateScrollPosition(IZZ)V
    .registers 7

    const/4 v1, 0x0

    if-nez p2, :cond_a

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getScrollY()I

    move-result v0

    if-ne p1, v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    if-nez p3, :cond_25

    invoke-virtual {p0, p1}, Lcom/pinguo/album/views/ThumbnailView;->setScrollYNotInAnimation(I)V

    :goto_f
    iget-object v2, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    if-gez p1, :cond_29

    move v0, v1

    :goto_14
    invoke-virtual {v2, v0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->setScrollPosition(I)V

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mListener:Lcom/pinguo/album/views/ThumbnailView$Listener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mListener:Lcom/pinguo/album/views/ThumbnailView$Listener;

    invoke-virtual {p0, v1}, Lcom/pinguo/album/views/ThumbnailView;->getScrollLimit(Z)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pinguo/album/views/ThumbnailView$Listener;->onScrollPositionChanged(II)V

    goto :goto_9

    :cond_25
    invoke-virtual {p0, p1}, Lcom/pinguo/album/views/ThumbnailView;->setScrollY(I)V

    goto :goto_f

    :cond_29
    move v0, p1

    goto :goto_14
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mAnimation:Lcom/pinguo/album/animations/ThumbnailAnim;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mAnimation:Lcom/pinguo/album/animations/ThumbnailAnim;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/album/animations/ThumbnailAnim;->calculate(J)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected eventCancelDown(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mListener:Lcom/pinguo/album/views/ThumbnailView$Listener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mListener:Lcom/pinguo/album/views/ThumbnailView$Listener;

    invoke-interface {v0, p1}, Lcom/pinguo/album/views/ThumbnailView$Listener;->onUp(Z)V

    :cond_9
    return-void
.end method

.method protected eventFling()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mUIListener:Lcom/pinguo/album/views/UIListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mUIListener:Lcom/pinguo/album/views/UIListener;

    invoke-interface {v0}, Lcom/pinguo/album/views/UIListener;->onUserInteractionBegin()V

    :cond_9
    return-void
.end method

.method protected eventLongPress(Landroid/view/MotionEvent;)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getThumbnailIndexByPosition(FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mListener:Lcom/pinguo/album/views/ThumbnailView$Listener;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mListener:Lcom/pinguo/album/views/ThumbnailView$Listener;

    invoke-interface {v1, v0}, Lcom/pinguo/album/views/ThumbnailView$Listener;->onLongTap(I)V

    :cond_1a
    return-void
.end method

.method protected eventScroll(I)V
    .registers 4

    iget v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mOverscrollEffect:I

    if-nez v0, :cond_c

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mPaper:Lcom/pinguo/album/views/utils/ViewPaper;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/pinguo/album/views/utils/ViewPaper;->overScroll(F)V

    :cond_c
    return-void
.end method

.method protected eventShowPress(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getThumbnailIndexByPosition(FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mListener:Lcom/pinguo/album/views/ThumbnailView$Listener;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mListener:Lcom/pinguo/album/views/ThumbnailView$Listener;

    invoke-interface {v1, v0}, Lcom/pinguo/album/views/ThumbnailView$Listener;->onDown(I)V

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method protected eventSingleTapUp(Landroid/view/MotionEvent;)V
    .registers 7

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getThumbnailIndexByPosition(FF)I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mListener:Lcom/pinguo/album/views/ThumbnailView$Listener;

    if-eqz v1, :cond_1a

    if-eq v0, v4, :cond_1b

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mListener:Lcom/pinguo/album/views/ThumbnailView$Listener;

    invoke-interface {v1, v0}, Lcom/pinguo/album/views/ThumbnailView$Listener;->onSingleTapUp(I)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    instance-of v1, v1, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    check-cast v1, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->getTagIndexByPosition(FF)I

    move-result v0

    if-eq v0, v4, :cond_1a

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mListener:Lcom/pinguo/album/views/ThumbnailView$Listener;

    invoke-interface {v1, v0}, Lcom/pinguo/album/views/ThumbnailView$Listener;->onSingleTagTapUp(I)V

    goto :goto_1a
.end method

.method public getContentLength()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getContentLength()I

    move-result v0

    return v0
.end method

.method protected getScrollLimit(Z)I
    .registers 4

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v1}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getScrollLimit()I

    move-result v0

    if-nez p1, :cond_b

    if-gtz v0, :cond_b

    const/4 v0, 0x0

    :cond_b
    return v0
.end method

.method public getSortTags()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaSet$SortTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    instance-of v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    check-cast v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->getSortTags()Ljava/util/ArrayList;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
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

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    instance-of v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getThumbnailPos()Ljava/util/ArrayList;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getVisibleEnd()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public isBegin()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->isBegin()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-super {p0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->isBegin()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isEnd()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->isEnd()Z

    move-result v0

    return v0
.end method

.method protected isScrollVertical()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v1}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v2}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getVisibleEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->setThumbnailViewSize(II)V

    invoke-virtual {p0, v0}, Lcom/pinguo/album/views/ThumbnailView;->resetVisibleRange(I)V

    iget v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mOverscrollEffect:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mPaper:Lcom/pinguo/album/views/utils/ViewPaper;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/album/views/utils/ViewPaper;->setSize(II)V

    goto :goto_2
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mUIListener:Lcom/pinguo/album/views/UIListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mUIListener:Lcom/pinguo/album/views/UIListener;

    invoke-interface {v0}, Lcom/pinguo/album/views/UIListener;->onUserInteraction()V

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    :goto_10
    invoke-super {p0, p1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_15
    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mPaper:Lcom/pinguo/album/views/utils/ViewPaper;

    invoke-virtual {v0}, Lcom/pinguo/album/views/utils/ViewPaper;->onRelease()V

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->invalidate()V

    goto :goto_10

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method

.method protected render(Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 16

    invoke-super {p0, p1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->render(Lcom/pinguo/album/opengles/GLESCanvas;)V

    iget-object v11, p0, Lcom/pinguo/album/views/ThumbnailView;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

    if-nez v11, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v11, p0, Lcom/pinguo/album/views/ThumbnailView;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

    invoke-interface {v11}, Lcom/pinguo/album/views/ThumbnailView$Renderer;->prepareDrawing()V

    invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/album/views/ThumbnailView;->scrollerAdvanceAnimation(J)Z

    move-result v4

    iget-object v11, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v11, v0, v1}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->advanceAnimation(J)Z

    move-result v11

    or-int/2addr v4, v11

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->scrollerGetPosition()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct {p0, v11, v12, v13}, Lcom/pinguo/album/views/ThumbnailView;->updateScrollPosition(IZZ)V

    invoke-direct {p0}, Lcom/pinguo/album/views/ThumbnailView;->isPaperAcitivated()Z

    move-result v6

    or-int/2addr v4, v6

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/album/views/ThumbnailView;->advanceAnimation(J)Z

    move-result v11

    or-int/2addr v4, v11

    invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->save()V

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getScrollX()I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getScrollY()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-interface {p1, v11, v12}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V

    iget-object v11, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v11}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getThumbnailCount()I

    move-result v11

    if-eqz v11, :cond_a0

    iget-object v11, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    instance-of v11, v11, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;

    if-eqz v11, :cond_69

    iget-object v2, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    check-cast v2, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;

    invoke-virtual {v2}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->getSortTags()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_69

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_69

    invoke-virtual {v2}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->getVisibleTagStart()I

    move-result v3

    :goto_63
    invoke-virtual {v2}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->getVisibleTagEnd()I

    move-result v11

    if-lt v3, v11, :cond_85

    :cond_69
    iget-object v11, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v11}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getVisibleEnd()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    :goto_71
    iget-object v11, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v11}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getVisibleStart()I

    move-result v11

    if-ge v3, v11, :cond_93

    :goto_79
    invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V

    invoke-virtual {p0, p1}, Lcom/pinguo/album/views/ThumbnailView;->renderParent(Lcom/pinguo/album/opengles/GLESCanvas;)V

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->invalidate()V

    goto :goto_7

    :cond_85
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pinguo/album/data/MediaSet$SortTag;

    iget-object v11, v11, Lcom/pinguo/album/data/MediaSet$SortTag;->pos:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v3, v11}, Lcom/pinguo/album/views/ThumbnailView;->renderSortTag(Lcom/pinguo/album/opengles/GLESCanvas;ILandroid/graphics/Rect;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    :cond_93
    const/4 v11, 0x0

    invoke-direct {p0, p1, v3, v11, v6}, Lcom/pinguo/album/views/ThumbnailView;->renderItem(Lcom/pinguo/album/opengles/GLESCanvas;IIZ)I

    move-result v11

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_9d

    const/4 v4, 0x1

    :cond_9d
    add-int/lit8 v3, v3, -0x1

    goto :goto_71

    :cond_a0
    invoke-direct {p0}, Lcom/pinguo/album/views/ThumbnailView;->ensureNoThumbnailRes()V

    iget-object v11, p0, Lcom/pinguo/album/views/ThumbnailView;->mNoThumbnailTextTexture:Lcom/pinguo/album/opengles/StringTexture;

    invoke-virtual {v11}, Lcom/pinguo/album/opengles/StringTexture;->getHeight()I

    move-result v11

    iget-object v12, p0, Lcom/pinguo/album/views/ThumbnailView;->mNoThumbnailImgTexture:Lcom/pinguo/album/opengles/ResourceTexture;

    invoke-virtual {v12}, Lcom/pinguo/album/opengles/ResourceTexture;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v5, v11

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getHeight()I

    move-result v11

    iget-object v12, p0, Lcom/pinguo/album/views/ThumbnailView;->mContext:Landroid/content/Context;

    const/16 v13, 0x30

    invoke-static {v12, v13}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    sub-float/2addr v11, v5

    const/high16 v12, 0x4000

    div-float v10, v11, v12

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/pinguo/album/views/ThumbnailView;->mNoThumbnailImgTexture:Lcom/pinguo/album/opengles/ResourceTexture;

    invoke-virtual {v12}, Lcom/pinguo/album/opengles/ResourceTexture;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x4000

    div-float v8, v11, v12

    invoke-interface {p1, v8, v10}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V

    iget-object v11, p0, Lcom/pinguo/album/views/ThumbnailView;->mNoThumbnailImgTexture:Lcom/pinguo/album/opengles/ResourceTexture;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, p1, v12, v13}, Lcom/pinguo/album/opengles/ResourceTexture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V

    neg-float v11, v8

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getWidth()I

    move-result v12

    iget-object v13, p0, Lcom/pinguo/album/views/ThumbnailView;->mNoThumbnailTextTexture:Lcom/pinguo/album/opengles/StringTexture;

    invoke-virtual {v13}, Lcom/pinguo/album/opengles/StringTexture;->getWidth()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    add-float v9, v11, v12

    iget-object v11, p0, Lcom/pinguo/album/views/ThumbnailView;->mNoThumbnailImgTexture:Lcom/pinguo/album/opengles/ResourceTexture;

    invoke-virtual {v11}, Lcom/pinguo/album/opengles/ResourceTexture;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-interface {p1, v9, v11}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V

    iget-object v11, p0, Lcom/pinguo/album/views/ThumbnailView;->mNoThumbnailTextTexture:Lcom/pinguo/album/opengles/StringTexture;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, p1, v12, v13}, Lcom/pinguo/album/opengles/StringTexture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V

    goto/16 :goto_79
.end method

.method public resetVisibleRange(I)V
    .registers 11

    iget-object v7, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    iget-object v8, p0, Lcom/pinguo/album/views/ThumbnailView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, v8}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getThumbnailRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getHeight()I

    move-result v6

    add-int v5, v4, v6

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    move v0, v4

    sub-int v7, v3, v2

    if-ge v6, v7, :cond_20

    move v0, v4

    :cond_1c
    :goto_1c
    invoke-virtual {p0, v0}, Lcom/pinguo/album/views/ThumbnailView;->setScrollPosition(I)V

    return-void

    :cond_20
    if-ge v2, v4, :cond_24

    move v0, v2

    goto :goto_1c

    :cond_24
    if-le v3, v5, :cond_1c

    sub-int v0, v3, v6

    goto :goto_1c
.end method

.method public setCenterIndex(I)V
    .registers 7

    iget-object v3, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v3}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getThumbnailCount()I

    move-result v2

    if-ltz p1, :cond_a

    if-lt p1, v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v3, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    iget-object v4, p0, Lcom/pinguo/album/views/ThumbnailView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getThumbnailRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v0}, Lcom/pinguo/album/views/ThumbnailView;->setScrollPosition(I)V

    goto :goto_a
.end method

.method public setExtraLengthInBottom(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->setExtraLengthInBottom(I)V

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->isScrollPositionExpand()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->isLastThumbnailShow()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/album/views/ThumbnailView;->getScrollLimit(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pinguo/album/views/ThumbnailView;->setScrollPosition(I)V

    :cond_21
    return-void
.end method

.method public setListener(Lcom/pinguo/album/views/ThumbnailView$Listener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/views/ThumbnailView;->mListener:Lcom/pinguo/album/views/ThumbnailView$Listener;

    return-void
.end method

.method public setOverscrollEffect(I)V
    .registers 3

    const/4 v0, 0x1

    iput p1, p0, Lcom/pinguo/album/views/ThumbnailView;->mOverscrollEffect:I

    if-ne p1, v0, :cond_9

    :goto_5
    invoke-virtual {p0, v0}, Lcom/pinguo/album/views/ThumbnailView;->scrollerSetOverfling(Z)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setScrollPosition(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pinguo/album/views/ThumbnailView;->getScrollLimit(Z)I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/pinguo/album/utils/Utils;->clamp(III)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/pinguo/album/views/ThumbnailView;->scrollerSetPosition(I)V

    invoke-direct {p0, p1, v1, v1}, Lcom/pinguo/album/views/ThumbnailView;->updateScrollPosition(IZZ)V

    return-void
.end method

.method public setSortTags(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaSet$SortTag;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    instance-of v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    check-cast v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->setSortTags(Ljava/util/ArrayList;)V

    :cond_d
    return-void
.end method

.method public setThumbnailCount(I)V
    .registers 4

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->setThumbnailCount(I)V

    iget v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mStartIndex:I

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mStartIndex:I

    invoke-virtual {p0, v0}, Lcom/pinguo/album/views/ThumbnailView;->setCenterIndex(I)V

    iput v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mStartIndex:I

    :cond_11
    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pinguo/album/views/ThumbnailView;->setScrollPosition(I)V

    return-void
.end method

.method public setThumbnailRenderer(Lcom/pinguo/album/views/ThumbnailView$Renderer;)V
    .registers 6

    iput-object p1, p0, Lcom/pinguo/album/views/ThumbnailView;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

    iget-object v2, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v2}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getThumbnailWidth()I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v3}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getThumbnailHeight()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/pinguo/album/views/ThumbnailView$Renderer;->onThumbnailSizeChanged(II)V

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getVisibleStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->getVisibleEnd()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/pinguo/album/views/ThumbnailView$Renderer;->onVisibleRangeChanged(II)V

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    instance-of v1, v1, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;

    if-eqz v1, :cond_3b

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    check-cast v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;

    iget-object v1, p0, Lcom/pinguo/album/views/ThumbnailView;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->getVisibleTagStart()I

    move-result v2

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->getVisibleTagEnd()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/pinguo/album/views/ThumbnailView$Renderer;->onVisibleTagRangeChanged(II)V

    :cond_3b
    return-void
.end method

.method public setUserInteractionListener(Lcom/pinguo/album/views/UIListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/views/ThumbnailView;->mUIListener:Lcom/pinguo/album/views/UIListener;

    return-void
.end method

.method public startRisingAnimation()V
    .registers 2

    new-instance v0, Lcom/pinguo/album/animations/ThumbnailRisingAnim;

    invoke-direct {v0}, Lcom/pinguo/album/animations/ThumbnailRisingAnim;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mAnimation:Lcom/pinguo/album/animations/ThumbnailAnim;

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mAnimation:Lcom/pinguo/album/animations/ThumbnailAnim;

    invoke-virtual {v0}, Lcom/pinguo/album/animations/ThumbnailAnim;->start()V

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getThumbnailCount()I

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->invalidate()V

    :cond_17
    return-void
.end method

.method public startScatteringAnimation(Lcom/pinguo/album/utils/RelativePosition;)V
    .registers 3

    new-instance v0, Lcom/pinguo/album/animations/ThumbnailScatteringAnim;

    invoke-direct {v0, p1}, Lcom/pinguo/album/animations/ThumbnailScatteringAnim;-><init>(Lcom/pinguo/album/utils/RelativePosition;)V

    iput-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mAnimation:Lcom/pinguo/album/animations/ThumbnailAnim;

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mAnimation:Lcom/pinguo/album/animations/ThumbnailAnim;

    invoke-virtual {v0}, Lcom/pinguo/album/animations/ThumbnailAnim;->start()V

    iget-object v0, p0, Lcom/pinguo/album/views/ThumbnailView;->mLayout:Lcom/pinguo/album/views/layout/ThumbnailLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->getThumbnailHeight()I

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/pinguo/album/views/ThumbnailView;->invalidate()V

    :cond_17
    return-void
.end method
