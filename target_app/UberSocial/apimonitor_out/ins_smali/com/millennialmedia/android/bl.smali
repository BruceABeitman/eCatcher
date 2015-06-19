.class  Lcom/millennialmedia/android/bl;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnTouchListener;
.field private a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/millennialmedia/android/ba;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/bl;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
iget-object v0, p0, Lcom/millennialmedia/android/bl;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/ba;
if-eqz v0, :cond_f
invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/ba;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x1
goto :goto_e
.end method