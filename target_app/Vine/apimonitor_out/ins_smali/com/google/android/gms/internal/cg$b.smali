.class final Lcom/google/android/gms/internal/cg$b;
.super Landroid/widget/RelativeLayout;
.field private final kG:Lcom/google/android/gms/internal/eq;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/google/android/gms/internal/eq;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/eq;-><init>(Landroid/content/Context;Ljava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/internal/cg$b;->kG:Lcom/google/android/gms/internal/eq;
return-void
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/cg$b;->kG:Lcom/google/android/gms/internal/eq;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/eq;->c(Landroid/view/MotionEvent;)V
const/4 v0, 0x0
return v0
.end method