.class public abstract Lcom/instagram/android/feed/ui/c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NoLongPressGestureListener.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/feed/ui/c;->a:Z

    const/4 v0, 0x1

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/instagram/android/feed/ui/c;->a:Z

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/instagram/android/feed/ui/c;->a()V

    iput-boolean v0, p0, Lcom/instagram/android/feed/ui/c;->a:Z

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/instagram/android/feed/ui/c;->a:Z

    if-nez v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1d

    invoke-virtual {p0}, Lcom/instagram/android/feed/ui/c;->a()V

    iput-boolean v0, p0, Lcom/instagram/android/feed/ui/c;->a:Z

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method
