.class final Landroid/support/v4/view/ad;
.super Ljava/lang/Object;
.source "MotionEventCompatEclair.java"
.method public static a(Landroid/view/MotionEvent;)I
.registers 2
invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v0
return v0
.end method
.method public static a(Landroid/view/MotionEvent;I)I
.registers 3
invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I
move-result v0
return v0
.end method
.method public static b(Landroid/view/MotionEvent;I)I
.registers 3
invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v0
return v0
.end method
.method public static c(Landroid/view/MotionEvent;I)F
.registers 3
invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F
move-result v0
return v0
.end method
.method public static d(Landroid/view/MotionEvent;I)F
.registers 3
invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F
move-result v0
return v0
.end method