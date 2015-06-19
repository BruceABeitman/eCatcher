.class final Lcom/google/android/gms/internal/lt;
.super Landroid/widget/ViewSwitcher;
.field private final a:Lcom/google/android/gms/internal/el;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/google/android/gms/internal/el;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/el;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/android/gms/internal/lt;->a:Lcom/google/android/gms/internal/el;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/lt;)Lcom/google/android/gms/internal/el;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/lt;->a:Lcom/google/android/gms/internal/el;
return-object v0
.end method
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/lt;->a:Lcom/google/android/gms/internal/el;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/el;->a(Landroid/view/MotionEvent;)V
const/4 v0, 0x0
return v0
.end method