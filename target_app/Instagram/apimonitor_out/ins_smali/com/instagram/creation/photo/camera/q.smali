.class final Lcom/instagram/creation/photo/camera/q;
.super Landroid/os/Handler;
.source "CameraFragment.java"
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;
.method private constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/photo/camera/q;->a:Lcom/instagram/creation/photo/camera/c;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/creation/photo/camera/c;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/creation/photo/camera/q;-><init>(Lcom/instagram/creation/photo/camera/c;)V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 6
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_5c
:pswitch_5
:goto_5
:cond_5
return-void
:pswitch_6
iget-object v0, p0, Lcom/instagram/creation/photo/camera/q;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->a(Lcom/instagram/creation/photo/camera/c;)V
goto :goto_5
:pswitch_c
iget-object v0, p0, Lcom/instagram/creation/photo/camera/q;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->b(Lcom/instagram/creation/photo/camera/c;)V
goto :goto_5
:pswitch_12
iget-object v0, p0, Lcom/instagram/creation/photo/camera/q;->a:Lcom/instagram/creation/photo/camera/c;
invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Lcom/instagram/camera/h;->a(Landroid/app/Activity;)I
move-result v0
iget-object v1, p0, Lcom/instagram/creation/photo/camera/q;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->c(Lcom/instagram/creation/photo/camera/c;)I
move-result v1
if-eq v0, v1, :cond_29
iget-object v0, p0, Lcom/instagram/creation/photo/camera/q;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->d(Lcom/instagram/creation/photo/camera/c;)V
:cond_29
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
iget-object v2, p0, Lcom/instagram/creation/photo/camera/q;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v2}, Lcom/instagram/creation/photo/camera/c;->e(Lcom/instagram/creation/photo/camera/c;)J
move-result-wide v2
sub-long/2addr v0, v2
const-wide/16 v2, 0x1388
cmp-long v0, v0, v2
if-gez v0, :cond_5
iget-object v0, p0, Lcom/instagram/creation/photo/camera/q;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->f(Lcom/instagram/creation/photo/camera/c;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x2
const-wide/16 v2, 0x64
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
goto :goto_5
:pswitch_47
iget-object v0, p0, Lcom/instagram/creation/photo/camera/q;->a:Lcom/instagram/creation/photo/camera/c;
invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/c;->u()Z
move-result v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/instagram/creation/photo/camera/q;->a:Lcom/instagram/creation/photo/camera/c;
invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;
move-result-object v0
sget v1, Lcom/facebook/az;->cannot_connect_camera:I
invoke-static {v0, v1}, Lcom/instagram/camera/h;->b(Landroid/app/Activity;I)V
goto :goto_5
nop
:pswitch_data_5c
.packed-switch 0x1
:pswitch_6
:pswitch_12
:pswitch_5
:pswitch_c
:pswitch_47
.end packed-switch
.end method