.class public Lco/vine/android/widget/ConfigurableViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ConfigurableViewPager.java"


# instance fields
.field private mSwipingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/vine/android/widget/ConfigurableViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/widget/ConfigurableViewPager;->mSwipingEnabled:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lco/vine/android/widget/ConfigurableViewPager;->mSwipingEnabled:Z

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lco/vine/android/widget/ConfigurableViewPager;->mSwipingEnabled:Z

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setSwipingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/widget/ConfigurableViewPager;->mSwipingEnabled:Z

    return-void
.end method
