.class public Lcom/spotify/mobile/android/ui/view/DisableableViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->b:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->a:Z

    if-eqz v1, :cond_a

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_9
    return v0

    :cond_a
    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->b:Z

    goto :goto_9
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->b:Z

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_15

    :cond_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->b:Z

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method public setEnabled(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->a:Z

    return-void
.end method
