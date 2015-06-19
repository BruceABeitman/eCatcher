.class public Lco/vine/android/widget/tabs/ScrollAwayTabWidget;
.super Landroid/widget/TabWidget;
.source "ScrollAwayTabWidget.java"


# instance fields
.field private mCurrentDelta:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->mCurrentDelta:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->mCurrentDelta:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->mCurrentDelta:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    iget v1, p0, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->mCurrentDelta:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/TabWidget;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getNavBottom()I
    .registers 3

    iget v0, p0, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->mCurrentDelta:I

    invoke-virtual {p0}, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->getNavBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onScroll(I)V
    .registers 5

    iget v0, p0, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->mCurrentDelta:I

    iget v1, p0, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->mCurrentDelta:I

    add-int/2addr v1, p1

    iput v1, p0, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->mCurrentDelta:I

    iget v1, p0, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->mCurrentDelta:I

    invoke-virtual {p0}, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->getHeight()I

    move-result v2

    neg-int v2, v2

    if-ge v1, v2, :cond_1f

    invoke-virtual {p0}, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->getHeight()I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->mCurrentDelta:I

    :cond_17
    :goto_17
    iget v1, p0, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->mCurrentDelta:I

    if-eq v1, v0, :cond_1e

    invoke-virtual {p0}, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->invalidate()V

    :cond_1e
    return-void

    :cond_1f
    iget v1, p0, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->mCurrentDelta:I

    if-lez v1, :cond_17

    const/4 v1, 0x0

    iput v1, p0, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->mCurrentDelta:I

    goto :goto_17
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->getNavBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Landroid/widget/TabWidget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method public resetScroll()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->mCurrentDelta:I

    return-void
.end method
