.class final Lcom/google/android/gms/internal/gd$b;
.super Lcom/google/android/gms/internal/gd;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.field private GA:Z
.field private HF:Ljava/lang/ref/WeakReference;
.method protected constructor <init>(Lcom/google/android/gms/internal/fx;I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/gd;-><init>(Lcom/google/android/gms/internal/fx;ILcom/google/android/gms/internal/gd$1;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/gd$b;->GA:Z
return-void
.end method
.method private g(Landroid/view/View;)V
.registers 10
const/4 v7, 0x1
const/4 v0, -0x1
const/4 v6, 0x0
invoke-static {}, Lcom/google/android/gms/internal/fr;->eO()Z
move-result v1
if-eqz v1, :cond_13
invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;
move-result-object v1
if-eqz v1, :cond_13
invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I
move-result v0
:cond_13
invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x2
new-array v2, v2, [I
invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V
invoke-virtual {p1}, Landroid/view/View;->getWidth()I
move-result v3
invoke-virtual {p1}, Landroid/view/View;->getHeight()I
move-result v4
iget-object v5, p0, Lcom/google/android/gms/internal/gd$b;->HC:Lcom/google/android/gms/internal/gd$a;
iput v0, v5, Lcom/google/android/gms/internal/gd$a;->HE:I
iget-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HC:Lcom/google/android/gms/internal/gd$a;
iput-object v1, v0, Lcom/google/android/gms/internal/gd$a;->HD:Landroid/os/IBinder;
iget-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HC:Lcom/google/android/gms/internal/gd$a;
aget v1, v2, v6
iput v1, v0, Lcom/google/android/gms/internal/gd$a;->left:I
iget-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HC:Lcom/google/android/gms/internal/gd$a;
aget v1, v2, v7
iput v1, v0, Lcom/google/android/gms/internal/gd$a;->top:I
iget-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HC:Lcom/google/android/gms/internal/gd$a;
aget v1, v2, v6
add-int/2addr v1, v3
iput v1, v0, Lcom/google/android/gms/internal/gd$a;->right:I
iget-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HC:Lcom/google/android/gms/internal/gd$a;
aget v1, v2, v7
add-int/2addr v1, v4
iput v1, v0, Lcom/google/android/gms/internal/gd$a;->bottom:I
iget-boolean v0, p0, Lcom/google/android/gms/internal/gd$b;->GA:Z
if-eqz v0, :cond_50
invoke-virtual {p0}, Lcom/google/android/gms/internal/gd$b;->fN()V
iput-boolean v6, p0, Lcom/google/android/gms/internal/gd$b;->GA:Z
:cond_50
return-void
.end method
.method protected final aV(I)V
.registers 4
const/4 v1, 0x0
new-instance v0, Lcom/google/android/gms/internal/gd$a;
invoke-direct {v0, p1, v1, v1}, Lcom/google/android/gms/internal/gd$a;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/internal/gd$1;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HC:Lcom/google/android/gms/internal/gd$a;
return-void
.end method
.method public final f(Landroid/view/View;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HB:Lcom/google/android/gms/internal/fx;
invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->fH()V
iget-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HF:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HF:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
iget-object v1, p0, Lcom/google/android/gms/internal/gd$b;->HB:Lcom/google/android/gms/internal/fx;
invoke-virtual {v1}, Lcom/google/android/gms/internal/fx;->getContext()Landroid/content/Context;
move-result-object v1
if-nez v0, :cond_28
instance-of v2, v1, Landroid/app/Activity;
if-eqz v2, :cond_28
move-object v0, v1
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
:cond_28
if-eqz v0, :cond_3a
invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-static {}, Lcom/google/android/gms/internal/fr;->eN()Z
move-result v1
if-eqz v1, :cond_7e
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
:goto_3a
:cond_3a
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HF:Ljava/lang/ref/WeakReference;
iget-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HB:Lcom/google/android/gms/internal/fx;
invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->getContext()Landroid/content/Context;
move-result-object v1
if-nez p1, :cond_67
instance-of v0, v1, Landroid/app/Activity;
if-eqz v0, :cond_67
move-object v0, v1
check-cast v0, Landroid/app/Activity;
const v2, 0x1020002
invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_5f
check-cast v1, Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
:cond_5f
const-string v1, "PopupManager"
const-string v2, "You have not specified a View to use as content view for popups. Falling back to the Activity content view which may not work properly in future versions of the API. Use setViewForPopups() to set your content view."
invoke-static {v1, v2}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
move-object p1, v0
:cond_67
if-eqz p1, :cond_82
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gd$b;->g(Landroid/view/View;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HF:Ljava/lang/ref/WeakReference;
invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
:goto_7d
return-void
:cond_7e
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
goto :goto_3a
:cond_82
const-string v0, "PopupManager"
const-string v1, "No content view usable to display popups. Popups will not be displayed in response to this client\'s calls. Use setViewForPopups() to set your content view."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->h(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7d
.end method
.method public final fN()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HC:Lcom/google/android/gms/internal/gd$a;
iget-object v0, v0, Lcom/google/android/gms/internal/gd$a;->HD:Landroid/os/IBinder;
if-eqz v0, :cond_a
invoke-super {p0}, Lcom/google/android/gms/internal/gd;->fN()V
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HF:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_f
iput-boolean v0, p0, Lcom/google/android/gms/internal/gd$b;->GA:Z
goto :goto_9
:cond_12
const/4 v0, 0x0
goto :goto_f
.end method
.method public final onGlobalLayout()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HF:Ljava/lang/ref/WeakReference;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HF:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_4
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gd$b;->g(Landroid/view/View;)V
goto :goto_4
.end method
.method public final onViewAttachedToWindow(Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gd$b;->g(Landroid/view/View;)V
return-void
.end method
.method public final onViewDetachedFromWindow(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gd$b;->HB:Lcom/google/android/gms/internal/fx;
invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->fH()V
invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
return-void
.end method