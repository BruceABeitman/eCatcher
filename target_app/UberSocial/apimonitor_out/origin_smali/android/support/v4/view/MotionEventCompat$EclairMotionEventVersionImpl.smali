.class Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findPointerIndex(Landroid/view/MotionEvent;I)I
    .registers 4

    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompatEclair;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getPointerCount(Landroid/view/MotionEvent;)I
    .registers 3

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompatEclair;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public getPointerId(Landroid/view/MotionEvent;I)I
    .registers 4

    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompatEclair;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getX(Landroid/view/MotionEvent;I)F
    .registers 4

    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompatEclair;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public getY(Landroid/view/MotionEvent;I)F
    .registers 4

    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompatEclair;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
