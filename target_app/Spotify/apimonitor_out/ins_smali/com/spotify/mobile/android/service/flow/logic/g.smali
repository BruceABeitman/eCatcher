.class final Lcom/spotify/mobile/android/service/flow/logic/g;
.super Landroid/os/Handler;
.source "SourceFile"
.field private a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
.registers 3
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/g;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/g;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/f;
if-eqz v0, :cond_16
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->p()Z
move-result v1
if-nez v1, :cond_16
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Lcom/spotify/mobile/android/service/flow/logic/f;)Z
move-result v1
if-nez v1, :cond_17
:cond_16
:goto_16
return-void
:cond_17
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_2e
goto :goto_16
:pswitch_1d
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/StartFragment;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/a;)V
goto :goto_16
:pswitch_25
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->b(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/StartFragment;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/a;)V
goto :goto_16
nop
:pswitch_data_2e
.packed-switch 0x1
:pswitch_1d
:pswitch_25
.end packed-switch
.end method