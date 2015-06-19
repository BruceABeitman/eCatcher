.class public Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
.super Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/activity/s;


# instance fields
.field private n:Lcom/spotify/mobile/android/service/connections/b;

.field private p:Landroid/os/Handler;

.field private q:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

.field private r:Z

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/ImageView;

.field private u:Z

.field private v:J

.field private w:Ljava/lang/Runnable;

.field private x:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->u:Z

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->w:Ljava/lang/Runnable;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->x:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Lcom/spotify/mobile/android/service/ConnectDevice;FLandroid/content/Context;)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "active_device"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "volume_level"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Lcom/spotify/mobile/android/service/connections/b;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->n:Lcom/spotify/mobile/android/service/connections/b;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->f()V

    return-void
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->x:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->q:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    return-object v0
.end method

.method private f()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final a(F)V
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->u:Z

    if-nez v2, :cond_12

    iget-wide v2, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->v:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-gez v2, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    iput-wide v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->v:J

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->q:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a(F)V

    goto :goto_12
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300d9

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->setContentView(I)V

    const v0, 0x7f0a02a2

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->q:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    const v0, 0x7f0a03a3

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f0a03a2

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->t:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->q:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->setEnabled(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->p:Landroid/os/Handler;

    new-instance v0, Lcom/spotify/mobile/android/service/connections/b;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/connections/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->n:Lcom/spotify/mobile/android/service/connections/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->q:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->q:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->q:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->q:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    new-instance v1, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a(Lcom/spotify/mobile/android/ui/view/s;)V

    invoke-virtual {p0, p0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->a(Lcom/spotify/mobile/android/ui/activity/s;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x19

    if-eq p1, v0, :cond_8

    const/16 v0, 0x18

    if-ne p1, v0, :cond_b

    :cond_8
    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->f()V

    :cond_b
    invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->onPause()V

    const-string v0, "com.spotify.mobile.android.service.action.client.BACKGROUND"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected onResume()V
    .registers 5

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->onResume()V

    const-string v0, "com.spotify.mobile.android.service.action.client.FOREGROUND"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onStart()V
    .registers 5

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->onStart()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->n:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->j()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->q:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    const-string v2, "volume_level"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a(F)V

    const-string v1, "active_device"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/ConnectDevice;

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->finish()V

    :goto_25
    return-void

    :cond_26
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->g()Z

    move-result v1

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->r:Z

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->q:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->r:Z

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->setEnabled(Z)V

    sget-object v1, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$4;->a:[I

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->k()Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_82

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->t:Landroid/widget/ImageView;

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_25

    :pswitch_54
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->t:Landroid/widget/ImageView;

    const v1, 0x7f020166

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_25

    :pswitch_5d
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->t:Landroid/widget/ImageView;

    const v1, 0x7f02016a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_25

    :pswitch_66
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->t:Landroid/widget/ImageView;

    const v1, 0x7f020168

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_25

    :pswitch_6f
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->t:Landroid/widget/ImageView;

    const v1, 0x7f02016b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_25

    :pswitch_78
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->t:Landroid/widget/ImageView;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_25

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_54
        :pswitch_5d
        :pswitch_66
        :pswitch_6f
        :pswitch_78
        :pswitch_78
    .end packed-switch
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->onStop()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->n:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->n:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->k()V

    :cond_10
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
