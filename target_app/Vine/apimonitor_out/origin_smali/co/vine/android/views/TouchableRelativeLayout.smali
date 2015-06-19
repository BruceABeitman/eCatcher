.class public Lco/vine/android/views/TouchableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "TouchableRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/views/TouchableRelativeLayout$TouchListener;
    }
.end annotation


# instance fields
.field public mTouchListener:Lco/vine/android/views/TouchableRelativeLayout$TouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lco/vine/android/views/TouchableRelativeLayout;->mTouchListener:Lco/vine/android/views/TouchableRelativeLayout$TouchListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lco/vine/android/views/TouchableRelativeLayout;->mTouchListener:Lco/vine/android/views/TouchableRelativeLayout$TouchListener;

    invoke-interface {v0, p1}, Lco/vine/android/views/TouchableRelativeLayout$TouchListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lco/vine/android/views/TouchableRelativeLayout;->mTouchListener:Lco/vine/android/views/TouchableRelativeLayout$TouchListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lco/vine/android/views/TouchableRelativeLayout;->mTouchListener:Lco/vine/android/views/TouchableRelativeLayout$TouchListener;

    invoke-interface {v0, p1}, Lco/vine/android/views/TouchableRelativeLayout$TouchListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public setTouchListener(Lco/vine/android/views/TouchableRelativeLayout$TouchListener;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/views/TouchableRelativeLayout;->mTouchListener:Lco/vine/android/views/TouchableRelativeLayout$TouchListener;

    return-void
.end method
