.class final Landroid/support/v4/view/r;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"
.implements Landroid/support/v4/view/o;
.field private final a:Landroid/view/GestureDetector;
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/view/GestureDetector;
const/4 v1, 0x0
invoke-direct {v0, p1, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
iput-object v0, p0, Landroid/support/v4/view/r;->a:Landroid/view/GestureDetector;
return-void
.end method
.method public final a(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/view/r;->a:Landroid/view/GestureDetector;
invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method