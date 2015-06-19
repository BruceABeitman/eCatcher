.class public abstract Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.field private static final n:[Ljava/lang/String;
.field private p:Lcom/spotify/mobile/android/ui/activity/s;
.field private q:Landroid/os/Handler;
.field private volatile r:F
.field private volatile s:I
.field private t:J
.field private u:Landroid/support/v4/app/z;
.field private v:Ljava/lang/Runnable;
.field private w:Ljava/lang/Runnable;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "volume"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->n:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->s:I
new-instance v0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->u:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->v:Ljava/lang/Runnable;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->w:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;F)F
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->r:F
return p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->s:I
return v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;J)J
.registers 3
iput-wide p1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->t:J
return-wide p1
.end method
.method static synthetic a()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->n:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->t:J
return-wide v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;F)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->p:Lcom/spotify/mobile/android/ui/activity/s;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->p:Lcom/spotify/mobile/android/ui/activity/s;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/ui/activity/s;->a(F)V
:cond_9
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)F
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->r:F
return v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->v:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->q:Landroid/os/Handler;
return-object v0
.end method
.method protected final a(Lcom/spotify/mobile/android/ui/activity/s;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->p:Lcom/spotify/mobile/android/ui/activity/s;
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->q:Landroid/os/Handler;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->e()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a017d
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->u:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->o:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->o:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->h()Z
move-result v0
if-eqz v0, :cond_15
:cond_10
invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
:goto_14
return v0
:cond_15
const/16 v0, 0x18
if-eq p1, v0, :cond_1d
const/16 v0, 0x19
if-ne p1, v0, :cond_5f
:cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->q:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->w:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V
iget v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->s:I
const/4 v1, -0x1
if-ne v0, v1, :cond_51
iput p1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->s:I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->o:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z
move-result v0
if-eqz v0, :cond_51
packed-switch p1, :pswitch_data_64
:goto_39
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->q:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->v:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->o:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->e()F
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->r:F
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->q:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->v:Ljava/lang/Runnable;
const-wide/16 v2, 0xc8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_51
const/4 v0, 0x1
goto :goto_14
:pswitch_53
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->o:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->f()V
goto :goto_39
:pswitch_59
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->o:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->g()V
goto :goto_39
:cond_5f
invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_14
:pswitch_data_64
.packed-switch 0x18
:pswitch_53
:pswitch_59
.end packed-switch
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 7
const/16 v0, 0x18
if-eq p1, v0, :cond_8
const/16 v0, 0x19
if-ne p1, v0, :cond_16
:cond_8
const/4 v0, -0x1
iput v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->s:I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->q:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->w:Ljava/lang/Runnable;
const-wide/16 v2, 0x190
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
const/4 v0, 0x1
:goto_15
return v0
:cond_16
invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_15
.end method
.method protected onPause()V
.registers 3
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onPause()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->q:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->w:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->q:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->v:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method