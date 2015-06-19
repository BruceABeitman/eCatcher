.class final Lcom/instagram/creation/video/f/b;
.super Landroid/os/Handler;
.source "CamcorderFragment.java"
.field final synthetic a:Lcom/instagram/creation/video/f/a;
.method constructor <init>(Lcom/instagram/creation/video/f/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 6
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_c6
:pswitch_5
:goto_5
:cond_5
return-void
:pswitch_6
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x80
invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
goto :goto_5
:pswitch_16
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;)Lcom/instagram/camera/ui/RotateLayout;
move-result-object v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;)Lcom/instagram/camera/ui/RotateLayout;
move-result-object v0
sget v1, Lcom/facebook/av;->focus_indicator:I
invoke-virtual {v0, v1}, Lcom/instagram/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/camera/ui/FocusIndicatorView;
invoke-virtual {v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->d()V
goto :goto_5
:pswitch_30
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/a;->e()V
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/a;->n()Z
move-result v0
if-nez v0, :cond_5
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->c(Lcom/instagram/creation/video/f/a;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x1
const-wide/16 v2, 0x28
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
goto :goto_5
:pswitch_52
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->d(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/r;
move-result-object v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->d(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/r;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->dismiss()V
goto :goto_5
:pswitch_64
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Lcom/instagram/creation/video/l/m;->a(Landroid/app/Activity;)I
move-result v0
iget-object v1, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v1}, Lcom/instagram/creation/video/f/a;->e(Lcom/instagram/creation/video/f/a;)I
move-result v1
if-eq v0, v1, :cond_83
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->f(Lcom/instagram/creation/video/f/a;)Z
move-result v0
if-nez v0, :cond_83
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->g(Lcom/instagram/creation/video/f/a;)V
:cond_83
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
iget-object v2, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v2}, Lcom/instagram/creation/video/f/a;->h(Lcom/instagram/creation/video/f/a;)J
move-result-wide v2
sub-long/2addr v0, v2
const-wide/16 v2, 0x1388
cmp-long v0, v0, v2
if-gez v0, :cond_5
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->c(Lcom/instagram/creation/video/f/a;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x4
const-wide/16 v2, 0x64
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
goto/16 :goto_5
:pswitch_a2
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->V()V
goto/16 :goto_5
:pswitch_a9
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->D()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v0
if-nez v0, :cond_be
const/16 v0, 0x10
const-wide/16 v1, 0x1f4
invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/creation/video/f/b;->sendEmptyMessageDelayed(IJ)Z
goto/16 :goto_5
:cond_be
iget-object v0, p0, Lcom/instagram/creation/video/f/b;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->X()V
goto/16 :goto_5
nop
:pswitch_data_c6
.packed-switch 0x1
:pswitch_30
:pswitch_6
:pswitch_5
:pswitch_64
:pswitch_16
:pswitch_5
:pswitch_5
:pswitch_a2
:pswitch_5
:pswitch_5
:pswitch_5
:pswitch_5
:pswitch_5
:pswitch_5
:pswitch_52
:pswitch_a9
.end packed-switch
.end method