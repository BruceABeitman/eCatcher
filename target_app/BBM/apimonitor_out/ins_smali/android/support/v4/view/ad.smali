.class final Landroid/support/v4/view/ad;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"
.implements Landroid/support/v4/view/ae;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/view/MotionEvent;)I
.registers 3
invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v0
return v0
.end method
.method public final a(Landroid/view/MotionEvent;I)I
.registers 4
invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I
move-result v0
return v0
.end method
.method public final b(Landroid/view/MotionEvent;I)I
.registers 4
invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v0
return v0
.end method
.method public final c(Landroid/view/MotionEvent;I)F
.registers 4
invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F
move-result v0
return v0
.end method
.method public final d(Landroid/view/MotionEvent;I)F
.registers 4
invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F
move-result v0
return v0
.end method