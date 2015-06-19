.class  Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"
.implements Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl;
.field private final mDetector:Landroid/view/GestureDetector;
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/view/GestureDetector;
invoke-direct {v0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
iput-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1;->mDetector:Landroid/view/GestureDetector;
return-void
.end method
.method public isLongpressEnabled()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1;->mDetector:Landroid/view/GestureDetector;
invoke-virtual {v0}, Landroid/view/GestureDetector;->isLongpressEnabled()Z
move-result v0
return v0
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1;->mDetector:Landroid/view/GestureDetector;
invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public setIsLongpressEnabled(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1;->mDetector:Landroid/view/GestureDetector;
invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V
return-void
.end method
.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1;->mDetector:Landroid/view/GestureDetector;
invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
return-void
.end method