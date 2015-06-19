.class public Lco/vine/android/util/ViewBehindTouchListener;
.super Ljava/lang/Object;
.source "ViewBehindTouchListener.java"

# interfaces
.implements Lco/vine/android/views/TouchableRelativeLayout$TouchListener;


# instance fields
.field private mActivePointerId:I

.field private mInitialX:F

.field private final mInvalidateTarget:Landroid/view/View;

.field private mIsScrolling:Z

.field private mSetInitials:Z

.field private final mSlideController:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Lco/vine/android/util/ViewBehindTouchListener;->mTouchSlop:I

    invoke-virtual {p2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getViewAbove()Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/util/ViewBehindTouchListener;->mSlideController:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {p2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getViewBehind()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/util/ViewBehindTouchListener;->mInvalidateTarget:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "onInterceptTouchEvent!!!!"

    invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_10

    if-ne v0, v3, :cond_14

    :cond_10
    iput-boolean v4, p0, Lco/vine/android/util/ViewBehindTouchListener;->mIsScrolling:Z

    move v3, v4

    :goto_13
    return v3

    :cond_14
    packed-switch v0, :pswitch_data_5a

    :cond_17
    :goto_17
    :pswitch_17
    iget-object v3, p0, Lco/vine/android/util/ViewBehindTouchListener;->mSlideController:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v3, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v3, p0, Lco/vine/android/util/ViewBehindTouchListener;->mInvalidateTarget:Landroid/view/View;

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->postInvalidateDelayed(J)V

    move v3, v4

    goto :goto_13

    :pswitch_25
    iget-boolean v5, p0, Lco/vine/android/util/ViewBehindTouchListener;->mIsScrolling:Z

    if-eqz v5, :cond_2f

    const-string v4, "Scrolling 2"

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_13

    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lco/vine/android/util/ViewBehindTouchListener;->mInitialX:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v5, p0, Lco/vine/android/util/ViewBehindTouchListener;->mTouchSlop:I

    if-le v2, v5, :cond_17

    const-string v4, "Scrolling"

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iput-boolean v3, p0, Lco/vine/android/util/ViewBehindTouchListener;->mIsScrolling:Z

    goto :goto_13

    :pswitch_47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lco/vine/android/util/ViewBehindTouchListener;->mInitialX:F

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    iput v5, p0, Lco/vine/android/util/ViewBehindTouchListener;->mActivePointerId:I

    iput-boolean v3, p0, Lco/vine/android/util/ViewBehindTouchListener;->mSetInitials:Z

    goto :goto_17

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_47
        :pswitch_17
        :pswitch_25
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v3, 0x0

    const-string v0, "onTouchEvent!!"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lco/vine/android/util/ViewBehindTouchListener;->mSetInitials:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lco/vine/android/util/ViewBehindTouchListener;->mSlideController:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lco/vine/android/util/ViewBehindTouchListener;->mActivePointerId:I

    invoke-virtual {v0, v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setInitialTouchEvents(FI)V

    iget-object v0, p0, Lco/vine/android/util/ViewBehindTouchListener;->mSlideController:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->determineDrag(Landroid/view/MotionEvent;)V

    iput-boolean v3, p0, Lco/vine/android/util/ViewBehindTouchListener;->mSetInitials:Z

    :cond_1c
    iget-object v0, p0, Lco/vine/android/util/ViewBehindTouchListener;->mSlideController:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    :goto_28
    :pswitch_28
    const/4 v0, 0x1

    return v0

    :pswitch_2a
    iput-boolean v3, p0, Lco/vine/android/util/ViewBehindTouchListener;->mIsScrolling:Z

    goto :goto_28

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_28
        :pswitch_2a
    .end packed-switch
.end method
