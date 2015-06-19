.class final Lcom/spotify/mobile/android/service/flow/login/x;
.super Landroid/os/Handler;
.source "SourceFile"
.field private final a:Ljava/lang/ref/WeakReference;
.method private constructor <init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
.registers 3
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/x;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/x;-><init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/x;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;
if-eqz v0, :cond_16
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->p()Z
move-result v1
if-nez v1, :cond_16
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->w()Landroid/view/View;
move-result-object v1
if-nez v1, :cond_17
:cond_16
:goto_16
return-void
:cond_17
iget v1, p1, Landroid/os/Message;->what:I
const/4 v2, 0x1
if-ne v1, v2, :cond_20
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->j(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
goto :goto_16
:cond_20
iget v1, p1, Landroid/os/Message;->what:I
const/4 v2, 0x2
if-ne v1, v2, :cond_16
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->l(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->E()V
goto :goto_16
.end method