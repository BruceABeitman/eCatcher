.class  Lcom/millennialmedia/android/bg;
.super Landroid/os/Handler;
.source "SourceFile"
.field private a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/millennialmedia/android/ba;)V
.registers 3
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/bg;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/bg;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/ba;
if-eqz v0, :cond_d
invoke-virtual {v0, p1}, Lcom/millennialmedia/android/ba;->a(Landroid/os/Message;)V
:cond_d
return-void
.end method