.class final Lcom/spotify/mobile/android/provider/ae;
.super Landroid/os/Handler;
.source "SourceFile"
.field private a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Landroid/os/Looper;Lcom/spotify/mobile/android/provider/ac;)V
.registers 4
invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ae;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ae;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/provider/ac;
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
iget v1, p1, Landroid/os/Message;->what:I
invoke-static {v0, v1}, Lcom/spotify/mobile/android/provider/ac;->a(Lcom/spotify/mobile/android/provider/ac;I)V
goto :goto_a
.end method